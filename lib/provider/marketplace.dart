import 'package:ecomate/proto/main.pb.dart';
import 'package:ecomate/services/marketplace.dart';
import 'package:ecomate/utils/storage.dart';
import 'package:ecomate/utils/token_call_options.dart';
import 'package:flutter/material.dart';

class MarketplaceState extends ChangeNotifier {
  List<MarketplaceCategory> marketplaceCategoryList = [];
  bool isLoading = true;

  List<MarketplaceItem> currentSelectedCategoryItemList = [];
  bool isCurrentSelectedCategoryLoading = true;

  Cart? cart;
  bool isCartLoading = true;

  MarketplaceCategory getMarketplaceCategoryById(String id) {
    return marketplaceCategoryList.firstWhere((element) => element.id == id);
  }

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

  Future<MarketplaceItem> getMarketplaceItemById(String id) async {
    GetMarketplaceItemByIdRequest req = GetMarketplaceItemByIdRequest();
    req.id = id;
    MarketplaceItemResponse res = await MarketplaceService
        .instance.marketplaceServiceClient
        .getMarketplaceItemById(req);

    return MarketplaceItem(
        id: res.marketplaceItem.id,
        name: res.marketplaceItem.name,
        description: res.marketplaceItem.description,
        price: res.marketplaceItem.price,
        imageUrl: res.marketplaceItem.imageUrl);
  }

  Future<void> getMarketplaceItemsByCategoryId(String categoryId) async {
    isCurrentSelectedCategoryLoading = true;
    notifyListeners();
    currentSelectedCategoryItemList =
        await getMarketplaceItemListByCategoryId(categoryId);
    isCurrentSelectedCategoryLoading = false;
    notifyListeners();
  }

  Future<void> addItemToCart(String itemId) async {
    final jwtToken = await storage.read(key: "jwtToken");
    if (jwtToken == null) {
      return;
    }
    print(jwtToken);

    final getCartReq = GetCartByUserIdRequest();
    final _ = await MarketplaceService.instance.marketplaceServiceClient
        .getCartByUserId(getCartReq, options: tokenCallOptions(jwtToken));

    final req = AddCartItemRequest();
    req.itemId = itemId;
    req.quantity = 1;
    await MarketplaceService.instance.marketplaceServiceClient
        .addCartItem(req, options: tokenCallOptions(jwtToken));
  }

  Future<void> getCartItemList() async {
    isCartLoading = true;
    notifyListeners();
    final jwtToken = await storage.read(key: "jwtToken");
    if (jwtToken == null) {
      return;
    }
    print(jwtToken);

    final getCartReq = GetCartByUserIdRequest();
    final res = await MarketplaceService.instance.marketplaceServiceClient
        .getCartByUserId(getCartReq, options: tokenCallOptions(jwtToken));

    cart = Cart(cartItemList: [
      for (var cartItem in res.cartItemList)
        CartItem(
            id: cartItem.id,
            itemId: cartItem.itemId,
            quantity: cartItem.quantity)
    ]);

    for (var cartItem in cart!.cartItemList!) {
      cartItem.marketplaceItem = await getMarketplaceItemById(cartItem.itemId);
    }

    isCartLoading = false;
    notifyListeners();
  }

  int calculateTotalItemPrice() {
    int totalPayment = 0;
    for (var cartItem in cart!.cartItemList!) {
      totalPayment += cartItem.marketplaceItem!.price! * cartItem.quantity;
    }
    return totalPayment;
  }

  List<MarketplaceItem> recommendedMarketplaceItemList = [];
  bool isRandomMarketplaceItemListLoading = true;

  Future<void> getRecommendedMarketplaceItem() async {
    isRandomMarketplaceItemListLoading = true;
    notifyListeners();
    final res = await MarketplaceService.instance.marketplaceServiceClient
        .getRecomendedItemList(GetRecomendedItemListRequest());

    recommendedMarketplaceItemList = res.marketplaceItemList
        .map((e) => MarketplaceItem(
            id: e.id,
            name: e.name,
            description: e.description,
            price: e.price,
            imageUrl: e.imageUrl))
        .toList();

    isRandomMarketplaceItemListLoading = false;
    notifyListeners();
  }

  Future<void> confirmPayment(BuildContext context) async {
    final storageJwtToken = await storage.read(key: "jwtToken");
    final userId = await storage.read(key: "userId");

    final res = await MarketplaceService.instance.marketplaceServiceClient
        .checkOutCart(CheckOutCartRequest(),
            options: tokenCallOptions(storageJwtToken ?? ""));

    if (!res.success) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content:
                    Text("Error while checking out cart, thats all we know"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("OK"))
                ],
              ));
    }
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

class Cart {
  Cart({this.cartItemList});

  final List<CartItem>? cartItemList;
}

class CartItem {
  CartItem(
      {required this.id,
      required this.itemId,
      required this.quantity,
      this.marketplaceItem});

  final String id;
  final String itemId;
  final int quantity;
  MarketplaceItem? marketplaceItem;
}
