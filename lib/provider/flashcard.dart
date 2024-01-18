import 'package:ecomate/proto/main.pb.dart';
import 'package:ecomate/services/flashcard.dart';
import 'package:flutter/material.dart';

class FlashcardState extends ChangeNotifier {
  List<FlashcardItem> flashcardItemList = [];
  bool isLoading = true;

  // Pure Functions for State

  void setNewsItemList(List<FlashcardItem> flashcardItemList) {
    this.flashcardItemList = flashcardItemList;
    notifyListeners();
  }

  void setIsLoading(bool isLoading) {
    this.isLoading = isLoading;
    notifyListeners();
  }

  // Async GRPC Calls
  Future<void> queryFlashcardList() async {
    setIsLoading(true);

    final request = GetFlashcardListRequest();
    final response = await FlashcardService.instance.flashcardServiceClient
        .getFlashcardList(request);
    List<FlashcardItem> newFlashcardItemList = [
      for (var flashcard in response.flashcardList)
        FlashcardItem(
            id: flashcard.id,
            title: flashcard.title,
            content: flashcard.description,
            imageUrl: flashcard.imageUrl)
    ];

    setNewsItemList(newFlashcardItemList);

    setIsLoading(false);

    notifyListeners();
  }

  // Pure Functions for State
  FlashcardItem getRandomFlashcardItem() {
    if (flashcardItemList.length == 0) {
      return FlashcardItem(
          id: "", title: "No Flashcard", content: "No Flashcard", imageUrl: "");
    }

    flashcardItemList.shuffle();
    return flashcardItemList[0];
  }
}

class FlashcardItem {
  final String id;
  final String title;
  final String content;
  final String imageUrl;

  FlashcardItem(
      {required this.id,
      required this.title,
      required this.content,
      required this.imageUrl});
}
