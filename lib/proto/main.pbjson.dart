//
//  Generated code. Do not modify.
//  source: lib/proto/main.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roleDescriptor instead')
const Role$json = {
  '1': 'Role',
  '2': [
    {'1': 'ADMIN', '2': 0},
    {'1': 'USER', '2': 1},
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode(
    'CgRSb2xlEgkKBUFETUlOEAASCAoEVVNFUhAB');

@$core.Deprecated('Use getEmojiRequestDescriptor instead')
const GetEmojiRequest$json = {
  '1': 'GetEmojiRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetEmojiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmojiRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRFbW9qaVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use createEmojiRequestDescriptor instead')
const CreateEmojiRequest$json = {
  '1': 'CreateEmojiRequest',
  '2': [
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `CreateEmojiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEmojiRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVFbW9qaVJlcXVlc3QSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbh'
    'gDIAEoCVILZGVzY3JpcHRpb24SFAoFaW1hZ2UYBCABKAlSBWltYWdl');

@$core.Deprecated('Use updateEmojiRequestDescriptor instead')
const UpdateEmojiRequest$json = {
  '1': 'UpdateEmojiRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `UpdateEmojiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEmojiRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVFbW9qaVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhQKBWltYWdlGAQgASgJUgVpbWFn'
    'ZQ==');

@$core.Deprecated('Use deleteEmojiRequestDescriptor instead')
const DeleteEmojiRequest$json = {
  '1': 'DeleteEmojiRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteEmojiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEmojiRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVFbW9qaVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use emojiResponseDescriptor instead')
const EmojiResponse$json = {
  '1': 'EmojiResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `EmojiResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emojiResponseDescriptor = $convert.base64Decode(
    'Cg1FbW9qaVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2'
    'Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIUCgVpbWFnZRgEIAEoCVIFaW1hZ2U=');

@$core.Deprecated('Use generalStatusResponseDescriptor instead')
const GeneralStatusResponse$json = {
  '1': 'GeneralStatusResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `GeneralStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generalStatusResponseDescriptor = $convert.base64Decode(
    'ChVHZW5lcmFsU3RhdHVzUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUg'
    'hwYXNzd29yZA==');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVlbWFpbBgCIAEoCVIFZW'
    '1haWwSGgoIcGFzc3dvcmQYAyABKAlSCHBhc3N3b3Jk');

@$core.Deprecated('Use googleLoginRequestDescriptor instead')
const GoogleLoginRequest$json = {
  '1': 'GoogleLoginRequest',
  '2': [
    {'1': 'idToken', '3': 1, '4': 1, '5': 9, '10': 'idToken'},
  ],
};

/// Descriptor for `GoogleLoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List googleLoginRequestDescriptor = $convert.base64Decode(
    'ChJHb29nbGVMb2dpblJlcXVlc3QSGAoHaWRUb2tlbhgBIAEoCVIHaWRUb2tlbg==');

@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = {
  '1': 'UserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'accessToken', '3': 4, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'role', '3': 5, '4': 1, '5': 9, '10': 'role'},
    {'1': 'imageUrl', '3': 6, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode(
    'CgxVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFZW'
    '1haWwYAyABKAlSBWVtYWlsEiAKC2FjY2Vzc1Rva2VuGAQgASgJUgthY2Nlc3NUb2tlbhISCgRy'
    'b2xlGAUgASgJUgRyb2xlEhoKCGltYWdlVXJsGAYgASgJUghpbWFnZVVybA==');

@$core.Deprecated('Use getNewsListRequestDescriptor instead')
const GetNewsListRequest$json = {
  '1': 'GetNewsListRequest',
};

/// Descriptor for `GetNewsListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNewsListRequestDescriptor = $convert.base64Decode(
    'ChJHZXROZXdzTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use getNewsCommentListRequestDescriptor instead')
const GetNewsCommentListRequest$json = {
  '1': 'GetNewsCommentListRequest',
  '2': [
    {'1': 'newsId', '3': 1, '4': 1, '5': 9, '10': 'newsId'},
  ],
};

/// Descriptor for `GetNewsCommentListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNewsCommentListRequestDescriptor = $convert.base64Decode(
    'ChlHZXROZXdzQ29tbWVudExpc3RSZXF1ZXN0EhYKBm5ld3NJZBgBIAEoCVIGbmV3c0lk');

@$core.Deprecated('Use createNewsCommentRequestDescriptor instead')
const CreateNewsCommentRequest$json = {
  '1': 'CreateNewsCommentRequest',
  '2': [
    {'1': 'newsId', '3': 1, '4': 1, '5': 9, '10': 'newsId'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `CreateNewsCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNewsCommentRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVOZXdzQ29tbWVudFJlcXVlc3QSFgoGbmV3c0lkGAEgASgJUgZuZXdzSWQSGAoHY2'
    '9udGVudBgCIAEoCVIHY29udGVudA==');

@$core.Deprecated('Use updateNewsCommentRequestDescriptor instead')
const UpdateNewsCommentRequest$json = {
  '1': 'UpdateNewsCommentRequest',
  '2': [
    {'1': 'newsId', '3': 1, '4': 1, '5': 9, '10': 'newsId'},
    {'1': 'commentId', '3': 2, '4': 1, '5': 9, '10': 'commentId'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `UpdateNewsCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateNewsCommentRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVOZXdzQ29tbWVudFJlcXVlc3QSFgoGbmV3c0lkGAEgASgJUgZuZXdzSWQSHAoJY2'
    '9tbWVudElkGAIgASgJUgljb21tZW50SWQSGAoHY29udGVudBgDIAEoCVIHY29udGVudA==');

@$core.Deprecated('Use deleteNewsCommentRequestDescriptor instead')
const DeleteNewsCommentRequest$json = {
  '1': 'DeleteNewsCommentRequest',
  '2': [
    {'1': 'newsId', '3': 1, '4': 1, '5': 9, '10': 'newsId'},
    {'1': 'commentId', '3': 2, '4': 1, '5': 9, '10': 'commentId'},
  ],
};

/// Descriptor for `DeleteNewsCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteNewsCommentRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVOZXdzQ29tbWVudFJlcXVlc3QSFgoGbmV3c0lkGAEgASgJUgZuZXdzSWQSHAoJY2'
    '9tbWVudElkGAIgASgJUgljb21tZW50SWQ=');

@$core.Deprecated('Use newsListResponseDescriptor instead')
const NewsListResponse$json = {
  '1': 'NewsListResponse',
  '2': [
    {'1': 'newsList', '3': 1, '4': 3, '5': 11, '6': '.News', '10': 'newsList'},
  ],
};

/// Descriptor for `NewsListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newsListResponseDescriptor = $convert.base64Decode(
    'ChBOZXdzTGlzdFJlc3BvbnNlEiEKCG5ld3NMaXN0GAEgAygLMgUuTmV3c1IIbmV3c0xpc3Q=');

@$core.Deprecated('Use newsCommentListResponseDescriptor instead')
const NewsCommentListResponse$json = {
  '1': 'NewsCommentListResponse',
  '2': [
    {'1': 'newsCommentList', '3': 1, '4': 3, '5': 11, '6': '.NewsComment', '10': 'newsCommentList'},
  ],
};

/// Descriptor for `NewsCommentListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newsCommentListResponseDescriptor = $convert.base64Decode(
    'ChdOZXdzQ29tbWVudExpc3RSZXNwb25zZRI2Cg9uZXdzQ29tbWVudExpc3QYASADKAsyDC5OZX'
    'dzQ29tbWVudFIPbmV3c0NvbW1lbnRMaXN0');

@$core.Deprecated('Use newsDescriptor instead')
const News$json = {
  '1': 'News',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    {'1': 'imageUrl', '3': 6, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'userId', '3': 7, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `News`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newsDescriptor = $convert.base64Decode(
    'CgROZXdzEg4KAmlkGAEgASgJUgJpZBIcCgljcmVhdGVkQXQYAiABKAlSCWNyZWF0ZWRBdBIcCg'
    'l1cGRhdGVkQXQYAyABKAlSCXVwZGF0ZWRBdBIUCgV0aXRsZRgEIAEoCVIFdGl0bGUSGAoHY29u'
    'dGVudBgFIAEoCVIHY29udGVudBIaCghpbWFnZVVybBgGIAEoCVIIaW1hZ2VVcmwSFgoGdXNlck'
    'lkGAcgASgJUgZ1c2VySWQ=');

@$core.Deprecated('Use newsCommentDescriptor instead')
const NewsComment$json = {
  '1': 'NewsComment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    {'1': 'newsId', '3': 5, '4': 1, '5': 9, '10': 'newsId'},
    {'1': 'userId', '3': 6, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `NewsComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newsCommentDescriptor = $convert.base64Decode(
    'CgtOZXdzQ29tbWVudBIOCgJpZBgBIAEoCVICaWQSHAoJY3JlYXRlZEF0GAIgASgJUgljcmVhdG'
    'VkQXQSHAoJdXBkYXRlZEF0GAMgASgJUgl1cGRhdGVkQXQSGAoHY29udGVudBgEIAEoCVIHY29u'
    'dGVudBIWCgZuZXdzSWQYBSABKAlSBm5ld3NJZBIWCgZ1c2VySWQYBiABKAlSBnVzZXJJZA==');

@$core.Deprecated('Use getFlashcardListRequestDescriptor instead')
const GetFlashcardListRequest$json = {
  '1': 'GetFlashcardListRequest',
};

/// Descriptor for `GetFlashcardListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFlashcardListRequestDescriptor = $convert.base64Decode(
    'ChdHZXRGbGFzaGNhcmRMaXN0UmVxdWVzdA==');

@$core.Deprecated('Use getFlashcardByIdRequestDescriptor instead')
const GetFlashcardByIdRequest$json = {
  '1': 'GetFlashcardByIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetFlashcardByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFlashcardByIdRequestDescriptor = $convert.base64Decode(
    'ChdHZXRGbGFzaGNhcmRCeUlkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use flashcardListResponseDescriptor instead')
const FlashcardListResponse$json = {
  '1': 'FlashcardListResponse',
  '2': [
    {'1': 'flashcardList', '3': 1, '4': 3, '5': 11, '6': '.Flashcard', '10': 'flashcardList'},
  ],
};

/// Descriptor for `FlashcardListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flashcardListResponseDescriptor = $convert.base64Decode(
    'ChVGbGFzaGNhcmRMaXN0UmVzcG9uc2USMAoNZmxhc2hjYXJkTGlzdBgBIAMoCzIKLkZsYXNoY2'
    'FyZFINZmxhc2hjYXJkTGlzdA==');

@$core.Deprecated('Use flashcardResponseDescriptor instead')
const FlashcardResponse$json = {
  '1': 'FlashcardResponse',
  '2': [
    {'1': 'flashcard', '3': 1, '4': 1, '5': 11, '6': '.Flashcard', '10': 'flashcard'},
  ],
};

/// Descriptor for `FlashcardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flashcardResponseDescriptor = $convert.base64Decode(
    'ChFGbGFzaGNhcmRSZXNwb25zZRIoCglmbGFzaGNhcmQYASABKAsyCi5GbGFzaGNhcmRSCWZsYX'
    'NoY2FyZA==');

@$core.Deprecated('Use flashcardDescriptor instead')
const Flashcard$json = {
  '1': 'Flashcard',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'imageUrl', '3': 6, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `Flashcard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flashcardDescriptor = $convert.base64Decode(
    'CglGbGFzaGNhcmQSDgoCaWQYASABKAlSAmlkEhwKCWNyZWF0ZWRBdBgCIAEoCVIJY3JlYXRlZE'
    'F0EhwKCXVwZGF0ZWRBdBgDIAEoCVIJdXBkYXRlZEF0EhQKBXRpdGxlGAQgASgJUgV0aXRsZRIg'
    'CgtkZXNjcmlwdGlvbhgFIAEoCVILZGVzY3JpcHRpb24SGgoIaW1hZ2VVcmwYBiABKAlSCGltYW'
    'dlVXJs');

@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = {
  '1': 'GetUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'password', '17': true},
    {'1': 'imageUrl', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'imageUrl', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_email'},
    {'1': '_password'},
    {'1': '_imageUrl'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEhkKBWVtYWlsGAMgASgJSAFSBWVtYWlsiAEBEh8KCHBhc3N3b3JkGAQgASgJSAJSCHBh'
    'c3N3b3JkiAEBEh8KCGltYWdlVXJsGAUgASgJSANSCGltYWdlVXJsiAEBQgcKBV9uYW1lQggKBl'
    '9lbWFpbEILCglfcGFzc3dvcmRCCwoJX2ltYWdlVXJs');

@$core.Deprecated('Use getMarketplaceCategoryListRequestDescriptor instead')
const GetMarketplaceCategoryListRequest$json = {
  '1': 'GetMarketplaceCategoryListRequest',
};

/// Descriptor for `GetMarketplaceCategoryListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMarketplaceCategoryListRequestDescriptor = $convert.base64Decode(
    'CiFHZXRNYXJrZXRwbGFjZUNhdGVnb3J5TGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use marketplaceCategoryListResponseDescriptor instead')
const MarketplaceCategoryListResponse$json = {
  '1': 'MarketplaceCategoryListResponse',
  '2': [
    {'1': 'marketplaceCategoryList', '3': 1, '4': 3, '5': 11, '6': '.MarketplaceCategory', '10': 'marketplaceCategoryList'},
  ],
};

/// Descriptor for `MarketplaceCategoryListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketplaceCategoryListResponseDescriptor = $convert.base64Decode(
    'Ch9NYXJrZXRwbGFjZUNhdGVnb3J5TGlzdFJlc3BvbnNlEk4KF21hcmtldHBsYWNlQ2F0ZWdvcn'
    'lMaXN0GAEgAygLMhQuTWFya2V0cGxhY2VDYXRlZ29yeVIXbWFya2V0cGxhY2VDYXRlZ29yeUxp'
    'c3Q=');

@$core.Deprecated('Use marketplaceCategoryDescriptor instead')
const MarketplaceCategory$json = {
  '1': 'MarketplaceCategory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'imageUrl', '3': 6, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `MarketplaceCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketplaceCategoryDescriptor = $convert.base64Decode(
    'ChNNYXJrZXRwbGFjZUNhdGVnb3J5Eg4KAmlkGAEgASgJUgJpZBIcCgljcmVhdGVkQXQYAiABKA'
    'lSCWNyZWF0ZWRBdBIcCgl1cGRhdGVkQXQYAyABKAlSCXVwZGF0ZWRBdBISCgRuYW1lGAQgASgJ'
    'UgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAUgASgJUgtkZXNjcmlwdGlvbhIaCghpbWFnZVVybBgGIA'
    'EoCVIIaW1hZ2VVcmw=');

@$core.Deprecated('Use getMarketplaceItemListByCategoryIdRequestDescriptor instead')
const GetMarketplaceItemListByCategoryIdRequest$json = {
  '1': 'GetMarketplaceItemListByCategoryIdRequest',
  '2': [
    {'1': 'categoryId', '3': 1, '4': 1, '5': 9, '10': 'categoryId'},
  ],
};

/// Descriptor for `GetMarketplaceItemListByCategoryIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMarketplaceItemListByCategoryIdRequestDescriptor = $convert.base64Decode(
    'CilHZXRNYXJrZXRwbGFjZUl0ZW1MaXN0QnlDYXRlZ29yeUlkUmVxdWVzdBIeCgpjYXRlZ29yeU'
    'lkGAEgASgJUgpjYXRlZ29yeUlk');

@$core.Deprecated('Use getMarketplaceItemListRequestDescriptor instead')
const GetMarketplaceItemListRequest$json = {
  '1': 'GetMarketplaceItemListRequest',
};

/// Descriptor for `GetMarketplaceItemListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMarketplaceItemListRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRNYXJrZXRwbGFjZUl0ZW1MaXN0UmVxdWVzdA==');

@$core.Deprecated('Use getMarketplaceItemByIdRequestDescriptor instead')
const GetMarketplaceItemByIdRequest$json = {
  '1': 'GetMarketplaceItemByIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetMarketplaceItemByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMarketplaceItemByIdRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRNYXJrZXRwbGFjZUl0ZW1CeUlkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use createMarketplaceItemRequestDescriptor instead')
const CreateMarketplaceItemRequest$json = {
  '1': 'CreateMarketplaceItemRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 3, '4': 1, '5': 5, '10': 'price'},
    {'1': 'imageUrl', '3': 4, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'categoryId', '3': 5, '4': 1, '5': 9, '10': 'categoryId'},
  ],
};

/// Descriptor for `CreateMarketplaceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createMarketplaceItemRequestDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVNYXJrZXRwbGFjZUl0ZW1SZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZG'
    'VzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhQKBXByaWNlGAMgASgFUgVwcmljZRIaCghp'
    'bWFnZVVybBgEIAEoCVIIaW1hZ2VVcmwSHgoKY2F0ZWdvcnlJZBgFIAEoCVIKY2F0ZWdvcnlJZA'
    '==');

@$core.Deprecated('Use updateMarketplaceItemRequestDescriptor instead')
const UpdateMarketplaceItemRequest$json = {
  '1': 'UpdateMarketplaceItemRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 4, '4': 1, '5': 5, '10': 'price'},
    {'1': 'imageUrl', '3': 5, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'categoryId', '3': 6, '4': 1, '5': 9, '10': 'categoryId'},
  ],
};

/// Descriptor for `UpdateMarketplaceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMarketplaceItemRequestDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVNYXJrZXRwbGFjZUl0ZW1SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGA'
    'IgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIUCgVwcmljZRgE'
    'IAEoBVIFcHJpY2USGgoIaW1hZ2VVcmwYBSABKAlSCGltYWdlVXJsEh4KCmNhdGVnb3J5SWQYBi'
    'ABKAlSCmNhdGVnb3J5SWQ=');

@$core.Deprecated('Use deleteMarketplaceItemRequestDescriptor instead')
const DeleteMarketplaceItemRequest$json = {
  '1': 'DeleteMarketplaceItemRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteMarketplaceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMarketplaceItemRequestDescriptor = $convert.base64Decode(
    'ChxEZWxldGVNYXJrZXRwbGFjZUl0ZW1SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getCartByUserIdRequestDescriptor instead')
const GetCartByUserIdRequest$json = {
  '1': 'GetCartByUserIdRequest',
};

/// Descriptor for `GetCartByUserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCartByUserIdRequestDescriptor = $convert.base64Decode(
    'ChZHZXRDYXJ0QnlVc2VySWRSZXF1ZXN0');

@$core.Deprecated('Use deleteCartByUserIdRequestDescriptor instead')
const DeleteCartByUserIdRequest$json = {
  '1': 'DeleteCartByUserIdRequest',
};

/// Descriptor for `DeleteCartByUserIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCartByUserIdRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVDYXJ0QnlVc2VySWRSZXF1ZXN0');

@$core.Deprecated('Use addCartItemRequestDescriptor instead')
const AddCartItemRequest$json = {
  '1': 'AddCartItemRequest',
  '2': [
    {'1': 'itemId', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

/// Descriptor for `AddCartItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCartItemRequestDescriptor = $convert.base64Decode(
    'ChJBZGRDYXJ0SXRlbVJlcXVlc3QSFgoGaXRlbUlkGAEgASgJUgZpdGVtSWQSGgoIcXVhbnRpdH'
    'kYAiABKAVSCHF1YW50aXR5');

@$core.Deprecated('Use removeCartItemRequestDescriptor instead')
const RemoveCartItemRequest$json = {
  '1': 'RemoveCartItemRequest',
  '2': [
    {'1': 'itemId', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
  ],
};

/// Descriptor for `RemoveCartItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeCartItemRequestDescriptor = $convert.base64Decode(
    'ChVSZW1vdmVDYXJ0SXRlbVJlcXVlc3QSFgoGaXRlbUlkGAEgASgJUgZpdGVtSWQ=');

@$core.Deprecated('Use updateCartItemRequestDescriptor instead')
const UpdateCartItemRequest$json = {
  '1': 'UpdateCartItemRequest',
  '2': [
    {'1': 'itemId', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

/// Descriptor for `UpdateCartItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCartItemRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVDYXJ0SXRlbVJlcXVlc3QSFgoGaXRlbUlkGAEgASgJUgZpdGVtSWQSGgoIcXVhbn'
    'RpdHkYAiABKAVSCHF1YW50aXR5');

@$core.Deprecated('Use getRecomendedItemListRequestDescriptor instead')
const GetRecomendedItemListRequest$json = {
  '1': 'GetRecomendedItemListRequest',
};

/// Descriptor for `GetRecomendedItemListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecomendedItemListRequestDescriptor = $convert.base64Decode(
    'ChxHZXRSZWNvbWVuZGVkSXRlbUxpc3RSZXF1ZXN0');

@$core.Deprecated('Use marketplaceItemListResponseDescriptor instead')
const MarketplaceItemListResponse$json = {
  '1': 'MarketplaceItemListResponse',
  '2': [
    {'1': 'marketplaceItemList', '3': 1, '4': 3, '5': 11, '6': '.MarketplaceItem', '10': 'marketplaceItemList'},
  ],
};

/// Descriptor for `MarketplaceItemListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketplaceItemListResponseDescriptor = $convert.base64Decode(
    'ChtNYXJrZXRwbGFjZUl0ZW1MaXN0UmVzcG9uc2USQgoTbWFya2V0cGxhY2VJdGVtTGlzdBgBIA'
    'MoCzIQLk1hcmtldHBsYWNlSXRlbVITbWFya2V0cGxhY2VJdGVtTGlzdA==');

@$core.Deprecated('Use marketplaceItemResponseDescriptor instead')
const MarketplaceItemResponse$json = {
  '1': 'MarketplaceItemResponse',
  '2': [
    {'1': 'marketplaceItem', '3': 1, '4': 1, '5': 11, '6': '.MarketplaceItem', '10': 'marketplaceItem'},
  ],
};

/// Descriptor for `MarketplaceItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketplaceItemResponseDescriptor = $convert.base64Decode(
    'ChdNYXJrZXRwbGFjZUl0ZW1SZXNwb25zZRI6Cg9tYXJrZXRwbGFjZUl0ZW0YASABKAsyEC5NYX'
    'JrZXRwbGFjZUl0ZW1SD21hcmtldHBsYWNlSXRlbQ==');

@$core.Deprecated('Use cartResponseDescriptor instead')
const CartResponse$json = {
  '1': 'CartResponse',
  '2': [
    {'1': 'cartItemList', '3': 1, '4': 3, '5': 11, '6': '.CartItem', '10': 'cartItemList'},
  ],
};

/// Descriptor for `CartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cartResponseDescriptor = $convert.base64Decode(
    'CgxDYXJ0UmVzcG9uc2USLQoMY2FydEl0ZW1MaXN0GAEgAygLMgkuQ2FydEl0ZW1SDGNhcnRJdG'
    'VtTGlzdA==');

@$core.Deprecated('Use marketplaceItemDescriptor instead')
const MarketplaceItem$json = {
  '1': 'MarketplaceItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 6, '4': 1, '5': 5, '10': 'price'},
    {'1': 'imageUrl', '3': 7, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `MarketplaceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketplaceItemDescriptor = $convert.base64Decode(
    'Cg9NYXJrZXRwbGFjZUl0ZW0SDgoCaWQYASABKAlSAmlkEhwKCWNyZWF0ZWRBdBgCIAEoCVIJY3'
    'JlYXRlZEF0EhwKCXVwZGF0ZWRBdBgDIAEoCVIJdXBkYXRlZEF0EhIKBG5hbWUYBCABKAlSBG5h'
    'bWUSIAoLZGVzY3JpcHRpb24YBSABKAlSC2Rlc2NyaXB0aW9uEhQKBXByaWNlGAYgASgFUgVwcm'
    'ljZRIaCghpbWFnZVVybBgHIAEoCVIIaW1hZ2VVcmw=');

@$core.Deprecated('Use cartItemDescriptor instead')
const CartItem$json = {
  '1': 'CartItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'createdAt', '3': 2, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updatedAt', '3': 3, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'quantity', '3': 4, '4': 1, '5': 5, '10': 'quantity'},
    {'1': 'cartId', '3': 5, '4': 1, '5': 9, '10': 'cartId'},
    {'1': 'itemId', '3': 6, '4': 1, '5': 9, '10': 'itemId'},
    {'1': 'isConfirmed', '3': 7, '4': 1, '5': 8, '10': 'isConfirmed'},
    {'1': 'isCheckedOut', '3': 8, '4': 1, '5': 8, '10': 'isCheckedOut'},
  ],
};

/// Descriptor for `CartItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cartItemDescriptor = $convert.base64Decode(
    'CghDYXJ0SXRlbRIOCgJpZBgBIAEoCVICaWQSHAoJY3JlYXRlZEF0GAIgASgJUgljcmVhdGVkQX'
    'QSHAoJdXBkYXRlZEF0GAMgASgJUgl1cGRhdGVkQXQSGgoIcXVhbnRpdHkYBCABKAVSCHF1YW50'
    'aXR5EhYKBmNhcnRJZBgFIAEoCVIGY2FydElkEhYKBml0ZW1JZBgGIAEoCVIGaXRlbUlkEiAKC2'
    'lzQ29uZmlybWVkGAcgASgIUgtpc0NvbmZpcm1lZBIiCgxpc0NoZWNrZWRPdXQYCCABKAhSDGlz'
    'Q2hlY2tlZE91dA==');

@$core.Deprecated('Use checkOutCartRequestDescriptor instead')
const CheckOutCartRequest$json = {
  '1': 'CheckOutCartRequest',
};

/// Descriptor for `CheckOutCartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkOutCartRequestDescriptor = $convert.base64Decode(
    'ChNDaGVja091dENhcnRSZXF1ZXN0');

@$core.Deprecated('Use checkOutCartItemRequestDescriptor instead')
const CheckOutCartItemRequest$json = {
  '1': 'CheckOutCartItemRequest',
  '2': [
    {'1': 'cartItemId', '3': 1, '4': 1, '5': 9, '10': 'cartItemId'},
  ],
};

/// Descriptor for `CheckOutCartItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkOutCartItemRequestDescriptor = $convert.base64Decode(
    'ChdDaGVja091dENhcnRJdGVtUmVxdWVzdBIeCgpjYXJ0SXRlbUlkGAEgASgJUgpjYXJ0SXRlbU'
    'lk');

@$core.Deprecated('Use getCheckedOutItemListRequestDescriptor instead')
const GetCheckedOutItemListRequest$json = {
  '1': 'GetCheckedOutItemListRequest',
};

/// Descriptor for `GetCheckedOutItemListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCheckedOutItemListRequestDescriptor = $convert.base64Decode(
    'ChxHZXRDaGVja2VkT3V0SXRlbUxpc3RSZXF1ZXN0');

@$core.Deprecated('Use cartItemListResponseDescriptor instead')
const CartItemListResponse$json = {
  '1': 'CartItemListResponse',
  '2': [
    {'1': 'cartItemList', '3': 1, '4': 3, '5': 11, '6': '.CartItem', '10': 'cartItemList'},
  ],
};

/// Descriptor for `CartItemListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cartItemListResponseDescriptor = $convert.base64Decode(
    'ChRDYXJ0SXRlbUxpc3RSZXNwb25zZRItCgxjYXJ0SXRlbUxpc3QYASADKAsyCS5DYXJ0SXRlbV'
    'IMY2FydEl0ZW1MaXN0');

@$core.Deprecated('Use confirmCartItemRequestDescriptor instead')
const ConfirmCartItemRequest$json = {
  '1': 'ConfirmCartItemRequest',
  '2': [
    {'1': 'cartItemId', '3': 2, '4': 1, '5': 9, '10': 'cartItemId'},
  ],
};

/// Descriptor for `ConfirmCartItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmCartItemRequestDescriptor = $convert.base64Decode(
    'ChZDb25maXJtQ2FydEl0ZW1SZXF1ZXN0Eh4KCmNhcnRJdGVtSWQYAiABKAlSCmNhcnRJdGVtSW'
    'Q=');

