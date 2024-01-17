//
//  Generated code. Do not modify.
//  source: lib/proto/main.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'main.pb.dart' as $0;

export 'main.pb.dart';

@$pb.GrpcServiceName('Emoji')
class EmojiClient extends $grpc.Client {
  static final _$getEmoji = $grpc.ClientMethod<$0.GetEmojiRequest, $0.EmojiResponse>(
      '/Emoji/GetEmoji',
      ($0.GetEmojiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmojiResponse.fromBuffer(value));
  static final _$createEmoji = $grpc.ClientMethod<$0.CreateEmojiRequest, $0.EmojiResponse>(
      '/Emoji/CreateEmoji',
      ($0.CreateEmojiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmojiResponse.fromBuffer(value));
  static final _$updateEmoji = $grpc.ClientMethod<$0.UpdateEmojiRequest, $0.EmojiResponse>(
      '/Emoji/UpdateEmoji',
      ($0.UpdateEmojiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmojiResponse.fromBuffer(value));
  static final _$deleteEmoji = $grpc.ClientMethod<$0.DeleteEmojiRequest, $0.EmojiResponse>(
      '/Emoji/DeleteEmoji',
      ($0.DeleteEmojiRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmojiResponse.fromBuffer(value));

  EmojiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.EmojiResponse> getEmoji($0.GetEmojiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEmoji, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmojiResponse> createEmoji($0.CreateEmojiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEmoji, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmojiResponse> updateEmoji($0.UpdateEmojiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmoji, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmojiResponse> deleteEmoji($0.DeleteEmojiRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteEmoji, request, options: options);
  }
}

@$pb.GrpcServiceName('Emoji')
abstract class EmojiServiceBase extends $grpc.Service {
  $core.String get $name => 'Emoji';

  EmojiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetEmojiRequest, $0.EmojiResponse>(
        'GetEmoji',
        getEmoji_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetEmojiRequest.fromBuffer(value),
        ($0.EmojiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateEmojiRequest, $0.EmojiResponse>(
        'CreateEmoji',
        createEmoji_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateEmojiRequest.fromBuffer(value),
        ($0.EmojiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateEmojiRequest, $0.EmojiResponse>(
        'UpdateEmoji',
        updateEmoji_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateEmojiRequest.fromBuffer(value),
        ($0.EmojiResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteEmojiRequest, $0.EmojiResponse>(
        'DeleteEmoji',
        deleteEmoji_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteEmojiRequest.fromBuffer(value),
        ($0.EmojiResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.EmojiResponse> getEmoji_Pre($grpc.ServiceCall call, $async.Future<$0.GetEmojiRequest> request) async {
    return getEmoji(call, await request);
  }

  $async.Future<$0.EmojiResponse> createEmoji_Pre($grpc.ServiceCall call, $async.Future<$0.CreateEmojiRequest> request) async {
    return createEmoji(call, await request);
  }

  $async.Future<$0.EmojiResponse> updateEmoji_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateEmojiRequest> request) async {
    return updateEmoji(call, await request);
  }

  $async.Future<$0.EmojiResponse> deleteEmoji_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteEmojiRequest> request) async {
    return deleteEmoji(call, await request);
  }

  $async.Future<$0.EmojiResponse> getEmoji($grpc.ServiceCall call, $0.GetEmojiRequest request);
  $async.Future<$0.EmojiResponse> createEmoji($grpc.ServiceCall call, $0.CreateEmojiRequest request);
  $async.Future<$0.EmojiResponse> updateEmoji($grpc.ServiceCall call, $0.UpdateEmojiRequest request);
  $async.Future<$0.EmojiResponse> deleteEmoji($grpc.ServiceCall call, $0.DeleteEmojiRequest request);
}
@$pb.GrpcServiceName('AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.UserResponse>(
      '/AuthService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$register = $grpc.ClientMethod<$0.RegisterRequest, $0.UserResponse>(
      '/AuthService/Register',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$googleLogin = $grpc.ClientMethod<$0.LoginRequest, $0.UserResponse>(
      '/AuthService/GoogleLogin',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserResponse> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> register($0.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> googleLogin($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$googleLogin, request, options: options);
  }
}

@$pb.GrpcServiceName('AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.UserResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.UserResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.UserResponse>(
        'GoogleLogin',
        googleLogin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserResponse> login_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.UserResponse> register_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.UserResponse> googleLogin_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return googleLogin(call, await request);
  }

  $async.Future<$0.UserResponse> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.UserResponse> register($grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.UserResponse> googleLogin($grpc.ServiceCall call, $0.LoginRequest request);
}
@$pb.GrpcServiceName('NewsService')
class NewsServiceClient extends $grpc.Client {
  static final _$getNewsList = $grpc.ClientMethod<$0.GetNewsListRequest, $0.NewsListResponse>(
      '/NewsService/GetNewsList',
      ($0.GetNewsListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NewsListResponse.fromBuffer(value));
  static final _$getNewsCommentList = $grpc.ClientMethod<$0.GetNewsCommentListRequest, $0.NewsCommentListResponse>(
      '/NewsService/GetNewsCommentList',
      ($0.GetNewsCommentListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NewsCommentListResponse.fromBuffer(value));
  static final _$createNewsComment = $grpc.ClientMethod<$0.CreateNewsCommentRequest, $0.GeneralStatusResponse>(
      '/NewsService/CreateNewsComment',
      ($0.CreateNewsCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$updateNewsComment = $grpc.ClientMethod<$0.UpdateNewsCommentRequest, $0.GeneralStatusResponse>(
      '/NewsService/UpdateNewsComment',
      ($0.UpdateNewsCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$deleteNewsComment = $grpc.ClientMethod<$0.DeleteNewsCommentRequest, $0.GeneralStatusResponse>(
      '/NewsService/DeleteNewsComment',
      ($0.DeleteNewsCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));

  NewsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.NewsListResponse> getNewsList($0.GetNewsListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNewsList, request, options: options);
  }

  $grpc.ResponseFuture<$0.NewsCommentListResponse> getNewsCommentList($0.GetNewsCommentListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNewsCommentList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> createNewsComment($0.CreateNewsCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createNewsComment, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> updateNewsComment($0.UpdateNewsCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateNewsComment, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> deleteNewsComment($0.DeleteNewsCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteNewsComment, request, options: options);
  }
}

@$pb.GrpcServiceName('NewsService')
abstract class NewsServiceBase extends $grpc.Service {
  $core.String get $name => 'NewsService';

  NewsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetNewsListRequest, $0.NewsListResponse>(
        'GetNewsList',
        getNewsList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNewsListRequest.fromBuffer(value),
        ($0.NewsListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetNewsCommentListRequest, $0.NewsCommentListResponse>(
        'GetNewsCommentList',
        getNewsCommentList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNewsCommentListRequest.fromBuffer(value),
        ($0.NewsCommentListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateNewsCommentRequest, $0.GeneralStatusResponse>(
        'CreateNewsComment',
        createNewsComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateNewsCommentRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateNewsCommentRequest, $0.GeneralStatusResponse>(
        'UpdateNewsComment',
        updateNewsComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateNewsCommentRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteNewsCommentRequest, $0.GeneralStatusResponse>(
        'DeleteNewsComment',
        deleteNewsComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteNewsCommentRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.NewsListResponse> getNewsList_Pre($grpc.ServiceCall call, $async.Future<$0.GetNewsListRequest> request) async {
    return getNewsList(call, await request);
  }

  $async.Future<$0.NewsCommentListResponse> getNewsCommentList_Pre($grpc.ServiceCall call, $async.Future<$0.GetNewsCommentListRequest> request) async {
    return getNewsCommentList(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> createNewsComment_Pre($grpc.ServiceCall call, $async.Future<$0.CreateNewsCommentRequest> request) async {
    return createNewsComment(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> updateNewsComment_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateNewsCommentRequest> request) async {
    return updateNewsComment(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> deleteNewsComment_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteNewsCommentRequest> request) async {
    return deleteNewsComment(call, await request);
  }

  $async.Future<$0.NewsListResponse> getNewsList($grpc.ServiceCall call, $0.GetNewsListRequest request);
  $async.Future<$0.NewsCommentListResponse> getNewsCommentList($grpc.ServiceCall call, $0.GetNewsCommentListRequest request);
  $async.Future<$0.GeneralStatusResponse> createNewsComment($grpc.ServiceCall call, $0.CreateNewsCommentRequest request);
  $async.Future<$0.GeneralStatusResponse> updateNewsComment($grpc.ServiceCall call, $0.UpdateNewsCommentRequest request);
  $async.Future<$0.GeneralStatusResponse> deleteNewsComment($grpc.ServiceCall call, $0.DeleteNewsCommentRequest request);
}
@$pb.GrpcServiceName('FlashcardService')
class FlashcardServiceClient extends $grpc.Client {
  static final _$getFlashcardList = $grpc.ClientMethod<$0.GetFlashcardListRequest, $0.FlashcardListResponse>(
      '/FlashcardService/GetFlashcardList',
      ($0.GetFlashcardListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FlashcardListResponse.fromBuffer(value));
  static final _$getFlashcardById = $grpc.ClientMethod<$0.GetFlashcardByIdRequest, $0.FlashcardResponse>(
      '/FlashcardService/GetFlashcardById',
      ($0.GetFlashcardByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FlashcardResponse.fromBuffer(value));

  FlashcardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.FlashcardListResponse> getFlashcardList($0.GetFlashcardListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFlashcardList, request, options: options);
  }

  $grpc.ResponseFuture<$0.FlashcardResponse> getFlashcardById($0.GetFlashcardByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFlashcardById, request, options: options);
  }
}

@$pb.GrpcServiceName('FlashcardService')
abstract class FlashcardServiceBase extends $grpc.Service {
  $core.String get $name => 'FlashcardService';

  FlashcardServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetFlashcardListRequest, $0.FlashcardListResponse>(
        'GetFlashcardList',
        getFlashcardList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetFlashcardListRequest.fromBuffer(value),
        ($0.FlashcardListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetFlashcardByIdRequest, $0.FlashcardResponse>(
        'GetFlashcardById',
        getFlashcardById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetFlashcardByIdRequest.fromBuffer(value),
        ($0.FlashcardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.FlashcardListResponse> getFlashcardList_Pre($grpc.ServiceCall call, $async.Future<$0.GetFlashcardListRequest> request) async {
    return getFlashcardList(call, await request);
  }

  $async.Future<$0.FlashcardResponse> getFlashcardById_Pre($grpc.ServiceCall call, $async.Future<$0.GetFlashcardByIdRequest> request) async {
    return getFlashcardById(call, await request);
  }

  $async.Future<$0.FlashcardListResponse> getFlashcardList($grpc.ServiceCall call, $0.GetFlashcardListRequest request);
  $async.Future<$0.FlashcardResponse> getFlashcardById($grpc.ServiceCall call, $0.GetFlashcardByIdRequest request);
}
@$pb.GrpcServiceName('UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getUser = $grpc.ClientMethod<$0.GetUserRequest, $0.UserResponse>(
      '/UserService/GetUser',
      ($0.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$0.UpdateUserRequest, $0.UserResponse>(
      '/UserService/UpdateUser',
      ($0.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserResponse> getUser($0.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> updateUser($0.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetUserRequest, $0.UserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserRequest, $0.UserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$0.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$0.UserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.UserResponse> getUser($grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.UserResponse> updateUser($grpc.ServiceCall call, $0.UpdateUserRequest request);
}
@$pb.GrpcServiceName('Marketplace')
class MarketplaceClient extends $grpc.Client {
  static final _$getMarketplaceCategoryList = $grpc.ClientMethod<$0.GetMarketplaceCategoryListRequest, $0.MarketplaceCategoryListResponse>(
      '/Marketplace/GetMarketplaceCategoryList',
      ($0.GetMarketplaceCategoryListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MarketplaceCategoryListResponse.fromBuffer(value));
  static final _$getMarketplaceItemListByCategoryId = $grpc.ClientMethod<$0.GetMarketplaceItemListByCategoryIdRequest, $0.MarketplaceItemListResponse>(
      '/Marketplace/GetMarketplaceItemListByCategoryId',
      ($0.GetMarketplaceItemListByCategoryIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MarketplaceItemListResponse.fromBuffer(value));
  static final _$getMarketplaceItemList = $grpc.ClientMethod<$0.GetMarketplaceItemListRequest, $0.MarketplaceItemListResponse>(
      '/Marketplace/GetMarketplaceItemList',
      ($0.GetMarketplaceItemListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MarketplaceItemListResponse.fromBuffer(value));
  static final _$getMarketplaceItemById = $grpc.ClientMethod<$0.GetMarketplaceItemByIdRequest, $0.MarketplaceItemResponse>(
      '/Marketplace/GetMarketplaceItemById',
      ($0.GetMarketplaceItemByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MarketplaceItemResponse.fromBuffer(value));
  static final _$createMarketplaceItem = $grpc.ClientMethod<$0.CreateMarketplaceItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/CreateMarketplaceItem',
      ($0.CreateMarketplaceItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$updateMarketplaceItem = $grpc.ClientMethod<$0.UpdateMarketplaceItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/UpdateMarketplaceItem',
      ($0.UpdateMarketplaceItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$deleteMarketplaceItem = $grpc.ClientMethod<$0.DeleteMarketplaceItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/DeleteMarketplaceItem',
      ($0.DeleteMarketplaceItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$getCartByUserId = $grpc.ClientMethod<$0.GetCartByUserIdRequest, $0.CartResponse>(
      '/Marketplace/GetCartByUserId',
      ($0.GetCartByUserIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CartResponse.fromBuffer(value));
  static final _$deleteCartByUserId = $grpc.ClientMethod<$0.DeleteCartByUserIdRequest, $0.GeneralStatusResponse>(
      '/Marketplace/DeleteCartByUserId',
      ($0.DeleteCartByUserIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$addCartItem = $grpc.ClientMethod<$0.AddCartItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/AddCartItem',
      ($0.AddCartItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$removeCartItem = $grpc.ClientMethod<$0.RemoveCartItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/RemoveCartItem',
      ($0.RemoveCartItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$updateCartItem = $grpc.ClientMethod<$0.UpdateCartItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/UpdateCartItem',
      ($0.UpdateCartItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$checkOutCart = $grpc.ClientMethod<$0.CheckOutCartRequest, $0.GeneralStatusResponse>(
      '/Marketplace/CheckOutCart',
      ($0.CheckOutCartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$checkOutCartItem = $grpc.ClientMethod<$0.CheckOutCartItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/CheckOutCartItem',
      ($0.CheckOutCartItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$getCheckedOutItemList = $grpc.ClientMethod<$0.GetCheckedOutItemListRequest, $0.CartItemListResponse>(
      '/Marketplace/GetCheckedOutItemList',
      ($0.GetCheckedOutItemListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CartItemListResponse.fromBuffer(value));
  static final _$confirmCartItem = $grpc.ClientMethod<$0.ConfirmCartItemRequest, $0.GeneralStatusResponse>(
      '/Marketplace/ConfirmCartItem',
      ($0.ConfirmCartItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GeneralStatusResponse.fromBuffer(value));
  static final _$getRecomendedItemList = $grpc.ClientMethod<$0.GetRecomendedItemListRequest, $0.MarketplaceItemListResponse>(
      '/Marketplace/getRecomendedItemList',
      ($0.GetRecomendedItemListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MarketplaceItemListResponse.fromBuffer(value));

  MarketplaceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MarketplaceCategoryListResponse> getMarketplaceCategoryList($0.GetMarketplaceCategoryListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMarketplaceCategoryList, request, options: options);
  }

  $grpc.ResponseFuture<$0.MarketplaceItemListResponse> getMarketplaceItemListByCategoryId($0.GetMarketplaceItemListByCategoryIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMarketplaceItemListByCategoryId, request, options: options);
  }

  $grpc.ResponseFuture<$0.MarketplaceItemListResponse> getMarketplaceItemList($0.GetMarketplaceItemListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMarketplaceItemList, request, options: options);
  }

  $grpc.ResponseFuture<$0.MarketplaceItemResponse> getMarketplaceItemById($0.GetMarketplaceItemByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMarketplaceItemById, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> createMarketplaceItem($0.CreateMarketplaceItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createMarketplaceItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> updateMarketplaceItem($0.UpdateMarketplaceItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateMarketplaceItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> deleteMarketplaceItem($0.DeleteMarketplaceItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMarketplaceItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.CartResponse> getCartByUserId($0.GetCartByUserIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCartByUserId, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> deleteCartByUserId($0.DeleteCartByUserIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCartByUserId, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> addCartItem($0.AddCartItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCartItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> removeCartItem($0.RemoveCartItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeCartItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> updateCartItem($0.UpdateCartItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCartItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> checkOutCart($0.CheckOutCartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkOutCart, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> checkOutCartItem($0.CheckOutCartItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkOutCartItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.CartItemListResponse> getCheckedOutItemList($0.GetCheckedOutItemListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCheckedOutItemList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GeneralStatusResponse> confirmCartItem($0.ConfirmCartItemRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$confirmCartItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.MarketplaceItemListResponse> getRecomendedItemList($0.GetRecomendedItemListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecomendedItemList, request, options: options);
  }
}

@$pb.GrpcServiceName('Marketplace')
abstract class MarketplaceServiceBase extends $grpc.Service {
  $core.String get $name => 'Marketplace';

  MarketplaceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetMarketplaceCategoryListRequest, $0.MarketplaceCategoryListResponse>(
        'GetMarketplaceCategoryList',
        getMarketplaceCategoryList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMarketplaceCategoryListRequest.fromBuffer(value),
        ($0.MarketplaceCategoryListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMarketplaceItemListByCategoryIdRequest, $0.MarketplaceItemListResponse>(
        'GetMarketplaceItemListByCategoryId',
        getMarketplaceItemListByCategoryId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMarketplaceItemListByCategoryIdRequest.fromBuffer(value),
        ($0.MarketplaceItemListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMarketplaceItemListRequest, $0.MarketplaceItemListResponse>(
        'GetMarketplaceItemList',
        getMarketplaceItemList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMarketplaceItemListRequest.fromBuffer(value),
        ($0.MarketplaceItemListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMarketplaceItemByIdRequest, $0.MarketplaceItemResponse>(
        'GetMarketplaceItemById',
        getMarketplaceItemById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMarketplaceItemByIdRequest.fromBuffer(value),
        ($0.MarketplaceItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateMarketplaceItemRequest, $0.GeneralStatusResponse>(
        'CreateMarketplaceItem',
        createMarketplaceItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateMarketplaceItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateMarketplaceItemRequest, $0.GeneralStatusResponse>(
        'UpdateMarketplaceItem',
        updateMarketplaceItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateMarketplaceItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteMarketplaceItemRequest, $0.GeneralStatusResponse>(
        'DeleteMarketplaceItem',
        deleteMarketplaceItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteMarketplaceItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCartByUserIdRequest, $0.CartResponse>(
        'GetCartByUserId',
        getCartByUserId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCartByUserIdRequest.fromBuffer(value),
        ($0.CartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCartByUserIdRequest, $0.GeneralStatusResponse>(
        'DeleteCartByUserId',
        deleteCartByUserId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteCartByUserIdRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCartItemRequest, $0.GeneralStatusResponse>(
        'AddCartItem',
        addCartItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCartItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveCartItemRequest, $0.GeneralStatusResponse>(
        'RemoveCartItem',
        removeCartItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveCartItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCartItemRequest, $0.GeneralStatusResponse>(
        'UpdateCartItem',
        updateCartItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateCartItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckOutCartRequest, $0.GeneralStatusResponse>(
        'CheckOutCart',
        checkOutCart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckOutCartRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckOutCartItemRequest, $0.GeneralStatusResponse>(
        'CheckOutCartItem',
        checkOutCartItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckOutCartItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCheckedOutItemListRequest, $0.CartItemListResponse>(
        'GetCheckedOutItemList',
        getCheckedOutItemList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCheckedOutItemListRequest.fromBuffer(value),
        ($0.CartItemListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConfirmCartItemRequest, $0.GeneralStatusResponse>(
        'ConfirmCartItem',
        confirmCartItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConfirmCartItemRequest.fromBuffer(value),
        ($0.GeneralStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRecomendedItemListRequest, $0.MarketplaceItemListResponse>(
        'getRecomendedItemList',
        getRecomendedItemList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRecomendedItemListRequest.fromBuffer(value),
        ($0.MarketplaceItemListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MarketplaceCategoryListResponse> getMarketplaceCategoryList_Pre($grpc.ServiceCall call, $async.Future<$0.GetMarketplaceCategoryListRequest> request) async {
    return getMarketplaceCategoryList(call, await request);
  }

  $async.Future<$0.MarketplaceItemListResponse> getMarketplaceItemListByCategoryId_Pre($grpc.ServiceCall call, $async.Future<$0.GetMarketplaceItemListByCategoryIdRequest> request) async {
    return getMarketplaceItemListByCategoryId(call, await request);
  }

  $async.Future<$0.MarketplaceItemListResponse> getMarketplaceItemList_Pre($grpc.ServiceCall call, $async.Future<$0.GetMarketplaceItemListRequest> request) async {
    return getMarketplaceItemList(call, await request);
  }

  $async.Future<$0.MarketplaceItemResponse> getMarketplaceItemById_Pre($grpc.ServiceCall call, $async.Future<$0.GetMarketplaceItemByIdRequest> request) async {
    return getMarketplaceItemById(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> createMarketplaceItem_Pre($grpc.ServiceCall call, $async.Future<$0.CreateMarketplaceItemRequest> request) async {
    return createMarketplaceItem(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> updateMarketplaceItem_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateMarketplaceItemRequest> request) async {
    return updateMarketplaceItem(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> deleteMarketplaceItem_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteMarketplaceItemRequest> request) async {
    return deleteMarketplaceItem(call, await request);
  }

  $async.Future<$0.CartResponse> getCartByUserId_Pre($grpc.ServiceCall call, $async.Future<$0.GetCartByUserIdRequest> request) async {
    return getCartByUserId(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> deleteCartByUserId_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteCartByUserIdRequest> request) async {
    return deleteCartByUserId(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> addCartItem_Pre($grpc.ServiceCall call, $async.Future<$0.AddCartItemRequest> request) async {
    return addCartItem(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> removeCartItem_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveCartItemRequest> request) async {
    return removeCartItem(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> updateCartItem_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateCartItemRequest> request) async {
    return updateCartItem(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> checkOutCart_Pre($grpc.ServiceCall call, $async.Future<$0.CheckOutCartRequest> request) async {
    return checkOutCart(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> checkOutCartItem_Pre($grpc.ServiceCall call, $async.Future<$0.CheckOutCartItemRequest> request) async {
    return checkOutCartItem(call, await request);
  }

  $async.Future<$0.CartItemListResponse> getCheckedOutItemList_Pre($grpc.ServiceCall call, $async.Future<$0.GetCheckedOutItemListRequest> request) async {
    return getCheckedOutItemList(call, await request);
  }

  $async.Future<$0.GeneralStatusResponse> confirmCartItem_Pre($grpc.ServiceCall call, $async.Future<$0.ConfirmCartItemRequest> request) async {
    return confirmCartItem(call, await request);
  }

  $async.Future<$0.MarketplaceItemListResponse> getRecomendedItemList_Pre($grpc.ServiceCall call, $async.Future<$0.GetRecomendedItemListRequest> request) async {
    return getRecomendedItemList(call, await request);
  }

  $async.Future<$0.MarketplaceCategoryListResponse> getMarketplaceCategoryList($grpc.ServiceCall call, $0.GetMarketplaceCategoryListRequest request);
  $async.Future<$0.MarketplaceItemListResponse> getMarketplaceItemListByCategoryId($grpc.ServiceCall call, $0.GetMarketplaceItemListByCategoryIdRequest request);
  $async.Future<$0.MarketplaceItemListResponse> getMarketplaceItemList($grpc.ServiceCall call, $0.GetMarketplaceItemListRequest request);
  $async.Future<$0.MarketplaceItemResponse> getMarketplaceItemById($grpc.ServiceCall call, $0.GetMarketplaceItemByIdRequest request);
  $async.Future<$0.GeneralStatusResponse> createMarketplaceItem($grpc.ServiceCall call, $0.CreateMarketplaceItemRequest request);
  $async.Future<$0.GeneralStatusResponse> updateMarketplaceItem($grpc.ServiceCall call, $0.UpdateMarketplaceItemRequest request);
  $async.Future<$0.GeneralStatusResponse> deleteMarketplaceItem($grpc.ServiceCall call, $0.DeleteMarketplaceItemRequest request);
  $async.Future<$0.CartResponse> getCartByUserId($grpc.ServiceCall call, $0.GetCartByUserIdRequest request);
  $async.Future<$0.GeneralStatusResponse> deleteCartByUserId($grpc.ServiceCall call, $0.DeleteCartByUserIdRequest request);
  $async.Future<$0.GeneralStatusResponse> addCartItem($grpc.ServiceCall call, $0.AddCartItemRequest request);
  $async.Future<$0.GeneralStatusResponse> removeCartItem($grpc.ServiceCall call, $0.RemoveCartItemRequest request);
  $async.Future<$0.GeneralStatusResponse> updateCartItem($grpc.ServiceCall call, $0.UpdateCartItemRequest request);
  $async.Future<$0.GeneralStatusResponse> checkOutCart($grpc.ServiceCall call, $0.CheckOutCartRequest request);
  $async.Future<$0.GeneralStatusResponse> checkOutCartItem($grpc.ServiceCall call, $0.CheckOutCartItemRequest request);
  $async.Future<$0.CartItemListResponse> getCheckedOutItemList($grpc.ServiceCall call, $0.GetCheckedOutItemListRequest request);
  $async.Future<$0.GeneralStatusResponse> confirmCartItem($grpc.ServiceCall call, $0.ConfirmCartItemRequest request);
  $async.Future<$0.MarketplaceItemListResponse> getRecomendedItemList($grpc.ServiceCall call, $0.GetRecomendedItemListRequest request);
}
