import 'package:flutter/material.dart';
import 'package:namer_app/proto/main.pb.dart';
import 'package:namer_app/utils/services/news.dart';

class NewsComment {
  final String id;
  final String content;
  final String newsId;

  final String userId;

  NewsComment(
      {required this.id,
      required this.content,
      required this.newsId,
      required this.userId});
}

class NewsItem {
  final String id;
  final String title;
  final String content;
  final String imageUrl;
  late List<NewsComment> newsCommentList;

  setNewsCommentList(List<NewsComment> newsCommentList) {
    this.newsCommentList = newsCommentList;
  }

  NewsItem(
      {required this.id,
      required this.title,
      required this.content,
      required this.imageUrl});
}

class NewsState extends ChangeNotifier {
  List<NewsItem> newsItemList = [];

  // Pure Functions for State
  void setNewsItemList(List<NewsItem> newsItemList) {
    this.newsItemList = newsItemList;
    notifyListeners();
  }

  void setNewsCommentList(String newsId, List<NewsComment> newsCommentList) {
    for (var newsItem in newsItemList) {
      if (newsItem.id == newsId) {
        newsItem.setNewsCommentList(newsCommentList);
      }
    }
    notifyListeners();
  }

  // Async GRPC Calls
  Future<void> queryNewsList() async {
    final request = GetNewsListRequest();
    final response =
        await NewsService.instance.newsServiceClient.getNewsList(request);
    List<NewsItem> newsItemList = [];
    for (var newsItem in response.newsList) {
      newsItemList.add(NewsItem(
          id: newsItem.id,
          title: newsItem.title,
          content: newsItem.content,
          imageUrl: newsItem.imageUrl));
    }
    setNewsItemList(newsItemList);
  }

  Future<void> queryNewsCommentList(String newsId) async {
    final request = GetNewsCommentListRequest(newsId: newsId);
    final response = await NewsService.instance.newsServiceClient
        .getNewsCommentList(request);
    List<NewsComment> newsCommentList = [];
    for (var newsComment in response.newsCommentList) {
      newsCommentList.add(NewsComment(
          id: newsComment.id,
          content: newsComment.content,
          newsId: newsComment.newsId,
          userId: newsComment.userId));
    }
    setNewsCommentList(newsId, newsCommentList);
  }

  Future<void> mutateCreateNewsComment(String newsId, String content) async {
    final request = CreateNewsCommentRequest(newsId: newsId, content: content);
    await NewsService.instance.newsServiceClient.createNewsComment(request);
    await queryNewsCommentList(newsId);
  }

  Future<void> mutateUpdateNewsComment(
      String newsId, String newsCommentId, String content) async {
    final request = UpdateNewsCommentRequest(
        newsId: newsId, commentId: newsCommentId, content: content);
    await NewsService.instance.newsServiceClient.updateNewsComment(request);
    await queryNewsCommentList(newsId);
  }

  Future<void> mutateDeleteNewsComment(
      String newsId, String newsCommentId) async {
    final request =
        DeleteNewsCommentRequest(newsId: newsId, commentId: newsCommentId);
    await NewsService.instance.newsServiceClient.deleteNewsComment(request);
    await queryNewsCommentList(newsId);
  }

  // Pure Functions for UI
  List<NewsItem> getNewsItemList() {
    return newsItemList;
  }

  List<NewsComment> getNewsCommentList(String newsId) {
    for (var newsItem in newsItemList) {
      if (newsItem.id == newsId) {
        return newsItem.newsCommentList;
      }
    }
    return [];
  }
}
