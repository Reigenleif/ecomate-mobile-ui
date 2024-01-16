import 'package:ecomate/proto/main.pb.dart';
import 'package:ecomate/services/marketplace.dart';
import 'package:flutter/material.dart';

class MarketplaceState extends ChangeNotifier {
  List<MarketplaceCategory> marketplaceCategoryList = [];
  bool isLoading = true;

  List<MarketplaceItem> currentSelectedCategoryItemList = [];
  bool isCurrentSelectedCategoryLoading = true;

  // async grpc calls
  Future<List<MarketplaceItem>> getMarketplaceItemListByCategoryId(
      String categoryId) async {
    GetMarketplaceItemListByCategoryIdRequest req =
        GetMarketplaceItemListByCategoryIdRequest();
    req.categoryId = categoryId;
    MarketplaceItemListResponse res = await MarketplaceService
        .instance.marketplaceServiceClient
        .getMarketplaceItemListByCategoryId(req);

    return res.marketplaceItemList
        .map((e) => MarketplaceItem(
            id: e.id,
            name: e.name,
            description: e.description,
            price: e.price,
            imageUrl: e.imageUrl))
        .toList();
  }

  Future<void> getMarketplaceItems() async {
    GetMarketplaceCategoryListRequest req = GetMarketplaceCategoryListRequest();
    MarketplaceCategoryListResponse res = await MarketplaceService
        .instance.marketplaceServiceClient
        .getMarketplaceCategoryList(req);

    marketplaceCategoryList = res.marketplaceCategoryList
        .map((e) => MarketplaceCategory(
            id: e.id,
            name: e.name,
            description: e.description,
            imageUrl: e.imageUrl,
            itemList: []))
        .toList();

    for (var i = 0; i < marketplaceCategoryList.length; i++) {
      marketplaceCategoryList[i].itemList =
          await getMarketplaceItemListByCategoryId(
              marketplaceCategoryList[i].id);
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> getMarketplaceItemsByCategoryId(String categoryId) async {
    isCurrentSelectedCategoryLoading = true;
    notifyListeners();
    currentSelectedCategoryItemList =
        await getMarketplaceItemListByCategoryId(categoryId);
    isCurrentSelectedCategoryLoading = false;
    notifyListeners();
  }
}

class MarketplaceItem {
  MarketplaceItem({
    required this.id,
    this.name,
    this.description,
    this.price,
    this.imageUrl,
  });

  final String id;
  final String? name;
  final String? description;
  final int? price;
  final String? imageUrl;
}

class MarketplaceCategory {
  MarketplaceCategory(
      {required this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.itemList});

  final String id;
  final String? name;
  final String? description;
  final String? imageUrl;
  List<MarketplaceItem>? itemList;
}
