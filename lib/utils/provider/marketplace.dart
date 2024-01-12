import 'package:flutter/material.dart';
import 'package:namer_app/proto/main.pb.dart';
import 'package:namer_app/utils/services/marketplace.dart';

class MarketplaceState extends ChangeNotifier {
  List<MarketplaceCategory> marketplaceCategoryList = [];

  Future<List<MarketplaceItem>> getMarketplaceItemListByCategoryId(String categoryId) async {
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
          await getMarketplaceItemListByCategoryId(marketplaceCategoryList[i].id);
    }

    // TODO: Optimize this
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
