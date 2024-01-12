//
//  Generated code. Do not modify.
//  source: lib/proto/main.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'main.pbenum.dart';

class GetEmojiRequest extends $pb.GeneratedMessage {
  factory GetEmojiRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetEmojiRequest._() : super();
  factory GetEmojiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmojiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEmojiRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmojiRequest clone() => GetEmojiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmojiRequest copyWith(void Function(GetEmojiRequest) updates) => super.copyWith((message) => updates(message as GetEmojiRequest)) as GetEmojiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEmojiRequest create() => GetEmojiRequest._();
  GetEmojiRequest createEmptyInstance() => create();
  static $pb.PbList<GetEmojiRequest> createRepeated() => $pb.PbList<GetEmojiRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEmojiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmojiRequest>(create);
  static GetEmojiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateEmojiRequest extends $pb.GeneratedMessage {
  factory CreateEmojiRequest({
    $core.String? name,
    $core.String? description,
    $core.String? image,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  CreateEmojiRequest._() : super();
  factory CreateEmojiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateEmojiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateEmojiRequest', createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateEmojiRequest clone() => CreateEmojiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateEmojiRequest copyWith(void Function(CreateEmojiRequest) updates) => super.copyWith((message) => updates(message as CreateEmojiRequest)) as CreateEmojiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateEmojiRequest create() => CreateEmojiRequest._();
  CreateEmojiRequest createEmptyInstance() => create();
  static $pb.PbList<CreateEmojiRequest> createRepeated() => $pb.PbList<CreateEmojiRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateEmojiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateEmojiRequest>(create);
  static CreateEmojiRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(4)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);
}

class UpdateEmojiRequest extends $pb.GeneratedMessage {
  factory UpdateEmojiRequest({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? image,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  UpdateEmojiRequest._() : super();
  factory UpdateEmojiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEmojiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateEmojiRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEmojiRequest clone() => UpdateEmojiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEmojiRequest copyWith(void Function(UpdateEmojiRequest) updates) => super.copyWith((message) => updates(message as UpdateEmojiRequest)) as UpdateEmojiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateEmojiRequest create() => UpdateEmojiRequest._();
  UpdateEmojiRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateEmojiRequest> createRepeated() => $pb.PbList<UpdateEmojiRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateEmojiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEmojiRequest>(create);
  static UpdateEmojiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);
}

class DeleteEmojiRequest extends $pb.GeneratedMessage {
  factory DeleteEmojiRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteEmojiRequest._() : super();
  factory DeleteEmojiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmojiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteEmojiRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEmojiRequest clone() => DeleteEmojiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEmojiRequest copyWith(void Function(DeleteEmojiRequest) updates) => super.copyWith((message) => updates(message as DeleteEmojiRequest)) as DeleteEmojiRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteEmojiRequest create() => DeleteEmojiRequest._();
  DeleteEmojiRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteEmojiRequest> createRepeated() => $pb.PbList<DeleteEmojiRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmojiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmojiRequest>(create);
  static DeleteEmojiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EmojiResponse extends $pb.GeneratedMessage {
  factory EmojiResponse({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? image,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  EmojiResponse._() : super();
  factory EmojiResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmojiResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmojiResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmojiResponse clone() => EmojiResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmojiResponse copyWith(void Function(EmojiResponse) updates) => super.copyWith((message) => updates(message as EmojiResponse)) as EmojiResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmojiResponse create() => EmojiResponse._();
  EmojiResponse createEmptyInstance() => create();
  static $pb.PbList<EmojiResponse> createRepeated() => $pb.PbList<EmojiResponse>();
  @$core.pragma('dart2js:noInline')
  static EmojiResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmojiResponse>(create);
  static EmojiResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);
}

class GeneralStatusResponse extends $pb.GeneratedMessage {
  factory GeneralStatusResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  GeneralStatusResponse._() : super();
  factory GeneralStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GeneralStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GeneralStatusResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GeneralStatusResponse clone() => GeneralStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GeneralStatusResponse copyWith(void Function(GeneralStatusResponse) updates) => super.copyWith((message) => updates(message as GeneralStatusResponse)) as GeneralStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeneralStatusResponse create() => GeneralStatusResponse._();
  GeneralStatusResponse createEmptyInstance() => create();
  static $pb.PbList<GeneralStatusResponse> createRepeated() => $pb.PbList<GeneralStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static GeneralStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GeneralStatusResponse>(create);
  static GeneralStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest({
    $core.String? email,
    $core.String? password,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  LoginRequest._() : super();
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class RegisterRequest extends $pb.GeneratedMessage {
  factory RegisterRequest({
    $core.String? name,
    $core.String? email,
    $core.String? password,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  RegisterRequest._() : super();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}

class GoogleLoginRequest extends $pb.GeneratedMessage {
  factory GoogleLoginRequest({
    $core.String? idToken,
  }) {
    final $result = create();
    if (idToken != null) {
      $result.idToken = idToken;
    }
    return $result;
  }
  GoogleLoginRequest._() : super();
  factory GoogleLoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoogleLoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoogleLoginRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idToken', protoName: 'idToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoogleLoginRequest clone() => GoogleLoginRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoogleLoginRequest copyWith(void Function(GoogleLoginRequest) updates) => super.copyWith((message) => updates(message as GoogleLoginRequest)) as GoogleLoginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoogleLoginRequest create() => GoogleLoginRequest._();
  GoogleLoginRequest createEmptyInstance() => create();
  static $pb.PbList<GoogleLoginRequest> createRepeated() => $pb.PbList<GoogleLoginRequest>();
  @$core.pragma('dart2js:noInline')
  static GoogleLoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoogleLoginRequest>(create);
  static GoogleLoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set idToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdToken() => clearField(1);
}

class UserResponse extends $pb.GeneratedMessage {
  factory UserResponse({
    $core.String? id,
    $core.String? name,
    $core.String? email,
    $core.String? accessToken,
    $core.String? role,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      $result.email = email;
    }
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (role != null) {
      $result.role = role;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  UserResponse._() : super();
  factory UserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..aOS(5, _omitFieldNames ? '' : 'role')
    ..aOS(6, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserResponse clone() => UserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserResponse copyWith(void Function(UserResponse) updates) => super.copyWith((message) => updates(message as UserResponse)) as UserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserResponse create() => UserResponse._();
  UserResponse createEmptyInstance() => create();
  static $pb.PbList<UserResponse> createRepeated() => $pb.PbList<UserResponse>();
  @$core.pragma('dart2js:noInline')
  static UserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserResponse>(create);
  static UserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accessToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set accessToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccessToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccessToken() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get role => $_getSZ(4);
  @$pb.TagNumber(5)
  set role($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRole() => $_has(4);
  @$pb.TagNumber(5)
  void clearRole() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageUrl() => clearField(6);
}

class GetNewsListRequest extends $pb.GeneratedMessage {
  factory GetNewsListRequest() => create();
  GetNewsListRequest._() : super();
  factory GetNewsListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNewsListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNewsListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNewsListRequest clone() => GetNewsListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNewsListRequest copyWith(void Function(GetNewsListRequest) updates) => super.copyWith((message) => updates(message as GetNewsListRequest)) as GetNewsListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNewsListRequest create() => GetNewsListRequest._();
  GetNewsListRequest createEmptyInstance() => create();
  static $pb.PbList<GetNewsListRequest> createRepeated() => $pb.PbList<GetNewsListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNewsListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNewsListRequest>(create);
  static GetNewsListRequest? _defaultInstance;
}

class GetNewsCommentListRequest extends $pb.GeneratedMessage {
  factory GetNewsCommentListRequest({
    $core.String? newsId,
  }) {
    final $result = create();
    if (newsId != null) {
      $result.newsId = newsId;
    }
    return $result;
  }
  GetNewsCommentListRequest._() : super();
  factory GetNewsCommentListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNewsCommentListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNewsCommentListRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'newsId', protoName: 'newsId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNewsCommentListRequest clone() => GetNewsCommentListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNewsCommentListRequest copyWith(void Function(GetNewsCommentListRequest) updates) => super.copyWith((message) => updates(message as GetNewsCommentListRequest)) as GetNewsCommentListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNewsCommentListRequest create() => GetNewsCommentListRequest._();
  GetNewsCommentListRequest createEmptyInstance() => create();
  static $pb.PbList<GetNewsCommentListRequest> createRepeated() => $pb.PbList<GetNewsCommentListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNewsCommentListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNewsCommentListRequest>(create);
  static GetNewsCommentListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get newsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set newsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewsId() => clearField(1);
}

class CreateNewsCommentRequest extends $pb.GeneratedMessage {
  factory CreateNewsCommentRequest({
    $core.String? newsId,
    $core.String? content,
  }) {
    final $result = create();
    if (newsId != null) {
      $result.newsId = newsId;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  CreateNewsCommentRequest._() : super();
  factory CreateNewsCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNewsCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateNewsCommentRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'newsId', protoName: 'newsId')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateNewsCommentRequest clone() => CreateNewsCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateNewsCommentRequest copyWith(void Function(CreateNewsCommentRequest) updates) => super.copyWith((message) => updates(message as CreateNewsCommentRequest)) as CreateNewsCommentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateNewsCommentRequest create() => CreateNewsCommentRequest._();
  CreateNewsCommentRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNewsCommentRequest> createRepeated() => $pb.PbList<CreateNewsCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNewsCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNewsCommentRequest>(create);
  static CreateNewsCommentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get newsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set newsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class UpdateNewsCommentRequest extends $pb.GeneratedMessage {
  factory UpdateNewsCommentRequest({
    $core.String? newsId,
    $core.String? commentId,
    $core.String? content,
  }) {
    final $result = create();
    if (newsId != null) {
      $result.newsId = newsId;
    }
    if (commentId != null) {
      $result.commentId = commentId;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  UpdateNewsCommentRequest._() : super();
  factory UpdateNewsCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNewsCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateNewsCommentRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'newsId', protoName: 'newsId')
    ..aOS(2, _omitFieldNames ? '' : 'commentId', protoName: 'commentId')
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateNewsCommentRequest clone() => UpdateNewsCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateNewsCommentRequest copyWith(void Function(UpdateNewsCommentRequest) updates) => super.copyWith((message) => updates(message as UpdateNewsCommentRequest)) as UpdateNewsCommentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateNewsCommentRequest create() => UpdateNewsCommentRequest._();
  UpdateNewsCommentRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateNewsCommentRequest> createRepeated() => $pb.PbList<UpdateNewsCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateNewsCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNewsCommentRequest>(create);
  static UpdateNewsCommentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get newsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set newsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get commentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set commentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommentId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
}

class DeleteNewsCommentRequest extends $pb.GeneratedMessage {
  factory DeleteNewsCommentRequest({
    $core.String? newsId,
    $core.String? commentId,
  }) {
    final $result = create();
    if (newsId != null) {
      $result.newsId = newsId;
    }
    if (commentId != null) {
      $result.commentId = commentId;
    }
    return $result;
  }
  DeleteNewsCommentRequest._() : super();
  factory DeleteNewsCommentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNewsCommentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteNewsCommentRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'newsId', protoName: 'newsId')
    ..aOS(2, _omitFieldNames ? '' : 'commentId', protoName: 'commentId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteNewsCommentRequest clone() => DeleteNewsCommentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteNewsCommentRequest copyWith(void Function(DeleteNewsCommentRequest) updates) => super.copyWith((message) => updates(message as DeleteNewsCommentRequest)) as DeleteNewsCommentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteNewsCommentRequest create() => DeleteNewsCommentRequest._();
  DeleteNewsCommentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNewsCommentRequest> createRepeated() => $pb.PbList<DeleteNewsCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteNewsCommentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteNewsCommentRequest>(create);
  static DeleteNewsCommentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get newsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set newsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get commentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set commentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommentId() => clearField(2);
}

class NewsListResponse extends $pb.GeneratedMessage {
  factory NewsListResponse({
    $core.Iterable<News>? newsList,
  }) {
    final $result = create();
    if (newsList != null) {
      $result.newsList.addAll(newsList);
    }
    return $result;
  }
  NewsListResponse._() : super();
  factory NewsListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewsListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewsListResponse', createEmptyInstance: create)
    ..pc<News>(1, _omitFieldNames ? '' : 'newsList', $pb.PbFieldType.PM, protoName: 'newsList', subBuilder: News.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewsListResponse clone() => NewsListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewsListResponse copyWith(void Function(NewsListResponse) updates) => super.copyWith((message) => updates(message as NewsListResponse)) as NewsListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewsListResponse create() => NewsListResponse._();
  NewsListResponse createEmptyInstance() => create();
  static $pb.PbList<NewsListResponse> createRepeated() => $pb.PbList<NewsListResponse>();
  @$core.pragma('dart2js:noInline')
  static NewsListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewsListResponse>(create);
  static NewsListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<News> get newsList => $_getList(0);
}

class NewsCommentListResponse extends $pb.GeneratedMessage {
  factory NewsCommentListResponse({
    $core.Iterable<NewsComment>? newsCommentList,
  }) {
    final $result = create();
    if (newsCommentList != null) {
      $result.newsCommentList.addAll(newsCommentList);
    }
    return $result;
  }
  NewsCommentListResponse._() : super();
  factory NewsCommentListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewsCommentListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewsCommentListResponse', createEmptyInstance: create)
    ..pc<NewsComment>(1, _omitFieldNames ? '' : 'newsCommentList', $pb.PbFieldType.PM, protoName: 'newsCommentList', subBuilder: NewsComment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewsCommentListResponse clone() => NewsCommentListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewsCommentListResponse copyWith(void Function(NewsCommentListResponse) updates) => super.copyWith((message) => updates(message as NewsCommentListResponse)) as NewsCommentListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewsCommentListResponse create() => NewsCommentListResponse._();
  NewsCommentListResponse createEmptyInstance() => create();
  static $pb.PbList<NewsCommentListResponse> createRepeated() => $pb.PbList<NewsCommentListResponse>();
  @$core.pragma('dart2js:noInline')
  static NewsCommentListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewsCommentListResponse>(create);
  static NewsCommentListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NewsComment> get newsCommentList => $_getList(0);
}

class News extends $pb.GeneratedMessage {
  factory News({
    $core.String? id,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? title,
    $core.String? content,
    $core.String? imageUrl,
    $core.String? userId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (title != null) {
      $result.title = title;
    }
    if (content != null) {
      $result.content = content;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  News._() : super();
  factory News.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory News.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'News', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aOS(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'content')
    ..aOS(6, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..aOS(7, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  News clone() => News()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  News copyWith(void Function(News) updates) => super.copyWith((message) => updates(message as News)) as News;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static News create() => News._();
  News createEmptyInstance() => create();
  static $pb.PbList<News> createRepeated() => $pb.PbList<News>();
  @$core.pragma('dart2js:noInline')
  static News getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<News>(create);
  static News? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get createdAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set createdAt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get updatedAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set updatedAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get userId => $_getSZ(6);
  @$pb.TagNumber(7)
  set userId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserId() => clearField(7);
}

class NewsComment extends $pb.GeneratedMessage {
  factory NewsComment({
    $core.String? id,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? content,
    $core.String? newsId,
    $core.String? userId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (content != null) {
      $result.content = content;
    }
    if (newsId != null) {
      $result.newsId = newsId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  NewsComment._() : super();
  factory NewsComment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewsComment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NewsComment', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aOS(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..aOS(5, _omitFieldNames ? '' : 'newsId', protoName: 'newsId')
    ..aOS(6, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewsComment clone() => NewsComment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewsComment copyWith(void Function(NewsComment) updates) => super.copyWith((message) => updates(message as NewsComment)) as NewsComment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewsComment create() => NewsComment._();
  NewsComment createEmptyInstance() => create();
  static $pb.PbList<NewsComment> createRepeated() => $pb.PbList<NewsComment>();
  @$core.pragma('dart2js:noInline')
  static NewsComment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewsComment>(create);
  static NewsComment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get createdAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set createdAt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get updatedAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set updatedAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get newsId => $_getSZ(4);
  @$pb.TagNumber(5)
  set newsId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewsId() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewsId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get userId => $_getSZ(5);
  @$pb.TagNumber(6)
  set userId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserId() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserId() => clearField(6);
}

class GetFlashcardListRequest extends $pb.GeneratedMessage {
  factory GetFlashcardListRequest() => create();
  GetFlashcardListRequest._() : super();
  factory GetFlashcardListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFlashcardListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFlashcardListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFlashcardListRequest clone() => GetFlashcardListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFlashcardListRequest copyWith(void Function(GetFlashcardListRequest) updates) => super.copyWith((message) => updates(message as GetFlashcardListRequest)) as GetFlashcardListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFlashcardListRequest create() => GetFlashcardListRequest._();
  GetFlashcardListRequest createEmptyInstance() => create();
  static $pb.PbList<GetFlashcardListRequest> createRepeated() => $pb.PbList<GetFlashcardListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFlashcardListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFlashcardListRequest>(create);
  static GetFlashcardListRequest? _defaultInstance;
}

class GetFlashcardByIdRequest extends $pb.GeneratedMessage {
  factory GetFlashcardByIdRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetFlashcardByIdRequest._() : super();
  factory GetFlashcardByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFlashcardByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFlashcardByIdRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFlashcardByIdRequest clone() => GetFlashcardByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFlashcardByIdRequest copyWith(void Function(GetFlashcardByIdRequest) updates) => super.copyWith((message) => updates(message as GetFlashcardByIdRequest)) as GetFlashcardByIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFlashcardByIdRequest create() => GetFlashcardByIdRequest._();
  GetFlashcardByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetFlashcardByIdRequest> createRepeated() => $pb.PbList<GetFlashcardByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFlashcardByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFlashcardByIdRequest>(create);
  static GetFlashcardByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class FlashcardListResponse extends $pb.GeneratedMessage {
  factory FlashcardListResponse({
    $core.Iterable<Flashcard>? flashcardList,
  }) {
    final $result = create();
    if (flashcardList != null) {
      $result.flashcardList.addAll(flashcardList);
    }
    return $result;
  }
  FlashcardListResponse._() : super();
  factory FlashcardListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlashcardListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlashcardListResponse', createEmptyInstance: create)
    ..pc<Flashcard>(1, _omitFieldNames ? '' : 'flashcardList', $pb.PbFieldType.PM, protoName: 'flashcardList', subBuilder: Flashcard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FlashcardListResponse clone() => FlashcardListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlashcardListResponse copyWith(void Function(FlashcardListResponse) updates) => super.copyWith((message) => updates(message as FlashcardListResponse)) as FlashcardListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlashcardListResponse create() => FlashcardListResponse._();
  FlashcardListResponse createEmptyInstance() => create();
  static $pb.PbList<FlashcardListResponse> createRepeated() => $pb.PbList<FlashcardListResponse>();
  @$core.pragma('dart2js:noInline')
  static FlashcardListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlashcardListResponse>(create);
  static FlashcardListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Flashcard> get flashcardList => $_getList(0);
}

class FlashcardResponse extends $pb.GeneratedMessage {
  factory FlashcardResponse({
    Flashcard? flashcard,
  }) {
    final $result = create();
    if (flashcard != null) {
      $result.flashcard = flashcard;
    }
    return $result;
  }
  FlashcardResponse._() : super();
  factory FlashcardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlashcardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlashcardResponse', createEmptyInstance: create)
    ..aOM<Flashcard>(1, _omitFieldNames ? '' : 'flashcard', subBuilder: Flashcard.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FlashcardResponse clone() => FlashcardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlashcardResponse copyWith(void Function(FlashcardResponse) updates) => super.copyWith((message) => updates(message as FlashcardResponse)) as FlashcardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlashcardResponse create() => FlashcardResponse._();
  FlashcardResponse createEmptyInstance() => create();
  static $pb.PbList<FlashcardResponse> createRepeated() => $pb.PbList<FlashcardResponse>();
  @$core.pragma('dart2js:noInline')
  static FlashcardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlashcardResponse>(create);
  static FlashcardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Flashcard get flashcard => $_getN(0);
  @$pb.TagNumber(1)
  set flashcard(Flashcard v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFlashcard() => $_has(0);
  @$pb.TagNumber(1)
  void clearFlashcard() => clearField(1);
  @$pb.TagNumber(1)
  Flashcard ensureFlashcard() => $_ensure(0);
}

class Flashcard extends $pb.GeneratedMessage {
  factory Flashcard({
    $core.String? id,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? title,
    $core.String? description,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  Flashcard._() : super();
  factory Flashcard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Flashcard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Flashcard', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aOS(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Flashcard clone() => Flashcard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Flashcard copyWith(void Function(Flashcard) updates) => super.copyWith((message) => updates(message as Flashcard)) as Flashcard;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Flashcard create() => Flashcard._();
  Flashcard createEmptyInstance() => create();
  static $pb.PbList<Flashcard> createRepeated() => $pb.PbList<Flashcard>();
  @$core.pragma('dart2js:noInline')
  static Flashcard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Flashcard>(create);
  static Flashcard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get createdAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set createdAt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get updatedAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set updatedAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageUrl() => clearField(6);
}

class GetUserRequest extends $pb.GeneratedMessage {
  factory GetUserRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetUserRequest._() : super();
  factory GetUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserRequest clone() => GetUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserRequest copyWith(void Function(GetUserRequest) updates) => super.copyWith((message) => updates(message as GetUserRequest)) as GetUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserRequest create() => GetUserRequest._();
  GetUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetUserRequest> createRepeated() => $pb.PbList<GetUserRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserRequest>(create);
  static GetUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateUserRequest extends $pb.GeneratedMessage {
  factory UpdateUserRequest({
    $core.String? id,
    $core.String? name,
    $core.String? email,
    $core.String? password,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  UpdateUserRequest._() : super();
  factory UpdateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..aOS(5, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserRequest clone() => UpdateUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserRequest copyWith(void Function(UpdateUserRequest) updates) => super.copyWith((message) => updates(message as UpdateUserRequest)) as UpdateUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest create() => UpdateUserRequest._();
  UpdateUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserRequest> createRepeated() => $pb.PbList<UpdateUserRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserRequest>(create);
  static UpdateUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageUrl() => clearField(5);
}

class GetMarketplaceCategoryListRequest extends $pb.GeneratedMessage {
  factory GetMarketplaceCategoryListRequest() => create();
  GetMarketplaceCategoryListRequest._() : super();
  factory GetMarketplaceCategoryListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMarketplaceCategoryListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMarketplaceCategoryListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMarketplaceCategoryListRequest clone() => GetMarketplaceCategoryListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMarketplaceCategoryListRequest copyWith(void Function(GetMarketplaceCategoryListRequest) updates) => super.copyWith((message) => updates(message as GetMarketplaceCategoryListRequest)) as GetMarketplaceCategoryListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMarketplaceCategoryListRequest create() => GetMarketplaceCategoryListRequest._();
  GetMarketplaceCategoryListRequest createEmptyInstance() => create();
  static $pb.PbList<GetMarketplaceCategoryListRequest> createRepeated() => $pb.PbList<GetMarketplaceCategoryListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMarketplaceCategoryListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMarketplaceCategoryListRequest>(create);
  static GetMarketplaceCategoryListRequest? _defaultInstance;
}

class MarketplaceCategoryListResponse extends $pb.GeneratedMessage {
  factory MarketplaceCategoryListResponse({
    $core.Iterable<MarketplaceCategory>? marketplaceCategoryList,
  }) {
    final $result = create();
    if (marketplaceCategoryList != null) {
      $result.marketplaceCategoryList.addAll(marketplaceCategoryList);
    }
    return $result;
  }
  MarketplaceCategoryListResponse._() : super();
  factory MarketplaceCategoryListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketplaceCategoryListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarketplaceCategoryListResponse', createEmptyInstance: create)
    ..pc<MarketplaceCategory>(1, _omitFieldNames ? '' : 'marketplaceCategoryList', $pb.PbFieldType.PM, protoName: 'marketplaceCategoryList', subBuilder: MarketplaceCategory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketplaceCategoryListResponse clone() => MarketplaceCategoryListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketplaceCategoryListResponse copyWith(void Function(MarketplaceCategoryListResponse) updates) => super.copyWith((message) => updates(message as MarketplaceCategoryListResponse)) as MarketplaceCategoryListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarketplaceCategoryListResponse create() => MarketplaceCategoryListResponse._();
  MarketplaceCategoryListResponse createEmptyInstance() => create();
  static $pb.PbList<MarketplaceCategoryListResponse> createRepeated() => $pb.PbList<MarketplaceCategoryListResponse>();
  @$core.pragma('dart2js:noInline')
  static MarketplaceCategoryListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketplaceCategoryListResponse>(create);
  static MarketplaceCategoryListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MarketplaceCategory> get marketplaceCategoryList => $_getList(0);
}

class MarketplaceCategory extends $pb.GeneratedMessage {
  factory MarketplaceCategory({
    $core.String? id,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? name,
    $core.String? description,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  MarketplaceCategory._() : super();
  factory MarketplaceCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketplaceCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarketplaceCategory', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aOS(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketplaceCategory clone() => MarketplaceCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketplaceCategory copyWith(void Function(MarketplaceCategory) updates) => super.copyWith((message) => updates(message as MarketplaceCategory)) as MarketplaceCategory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarketplaceCategory create() => MarketplaceCategory._();
  MarketplaceCategory createEmptyInstance() => create();
  static $pb.PbList<MarketplaceCategory> createRepeated() => $pb.PbList<MarketplaceCategory>();
  @$core.pragma('dart2js:noInline')
  static MarketplaceCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketplaceCategory>(create);
  static MarketplaceCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get createdAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set createdAt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get updatedAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set updatedAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imageUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set imageUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImageUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearImageUrl() => clearField(6);
}

class GetMarketplaceItemListByCategoryIdRequest extends $pb.GeneratedMessage {
  factory GetMarketplaceItemListByCategoryIdRequest({
    $core.String? categoryId,
  }) {
    final $result = create();
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    return $result;
  }
  GetMarketplaceItemListByCategoryIdRequest._() : super();
  factory GetMarketplaceItemListByCategoryIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMarketplaceItemListByCategoryIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMarketplaceItemListByCategoryIdRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMarketplaceItemListByCategoryIdRequest clone() => GetMarketplaceItemListByCategoryIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMarketplaceItemListByCategoryIdRequest copyWith(void Function(GetMarketplaceItemListByCategoryIdRequest) updates) => super.copyWith((message) => updates(message as GetMarketplaceItemListByCategoryIdRequest)) as GetMarketplaceItemListByCategoryIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMarketplaceItemListByCategoryIdRequest create() => GetMarketplaceItemListByCategoryIdRequest._();
  GetMarketplaceItemListByCategoryIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetMarketplaceItemListByCategoryIdRequest> createRepeated() => $pb.PbList<GetMarketplaceItemListByCategoryIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMarketplaceItemListByCategoryIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMarketplaceItemListByCategoryIdRequest>(create);
  static GetMarketplaceItemListByCategoryIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get categoryId => $_getSZ(0);
  @$pb.TagNumber(1)
  set categoryId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => clearField(1);
}

class GetMarketplaceItemListRequest extends $pb.GeneratedMessage {
  factory GetMarketplaceItemListRequest() => create();
  GetMarketplaceItemListRequest._() : super();
  factory GetMarketplaceItemListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMarketplaceItemListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMarketplaceItemListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMarketplaceItemListRequest clone() => GetMarketplaceItemListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMarketplaceItemListRequest copyWith(void Function(GetMarketplaceItemListRequest) updates) => super.copyWith((message) => updates(message as GetMarketplaceItemListRequest)) as GetMarketplaceItemListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMarketplaceItemListRequest create() => GetMarketplaceItemListRequest._();
  GetMarketplaceItemListRequest createEmptyInstance() => create();
  static $pb.PbList<GetMarketplaceItemListRequest> createRepeated() => $pb.PbList<GetMarketplaceItemListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMarketplaceItemListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMarketplaceItemListRequest>(create);
  static GetMarketplaceItemListRequest? _defaultInstance;
}

class GetMarketplaceItemByIdRequest extends $pb.GeneratedMessage {
  factory GetMarketplaceItemByIdRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetMarketplaceItemByIdRequest._() : super();
  factory GetMarketplaceItemByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMarketplaceItemByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMarketplaceItemByIdRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMarketplaceItemByIdRequest clone() => GetMarketplaceItemByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMarketplaceItemByIdRequest copyWith(void Function(GetMarketplaceItemByIdRequest) updates) => super.copyWith((message) => updates(message as GetMarketplaceItemByIdRequest)) as GetMarketplaceItemByIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMarketplaceItemByIdRequest create() => GetMarketplaceItemByIdRequest._();
  GetMarketplaceItemByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetMarketplaceItemByIdRequest> createRepeated() => $pb.PbList<GetMarketplaceItemByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMarketplaceItemByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMarketplaceItemByIdRequest>(create);
  static GetMarketplaceItemByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateMarketplaceItemRequest extends $pb.GeneratedMessage {
  factory CreateMarketplaceItemRequest({
    $core.String? name,
    $core.String? description,
    $core.int? price,
    $core.String? imageUrl,
    $core.String? categoryId,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    return $result;
  }
  CreateMarketplaceItemRequest._() : super();
  factory CreateMarketplaceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateMarketplaceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateMarketplaceItemRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..aOS(5, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateMarketplaceItemRequest clone() => CreateMarketplaceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateMarketplaceItemRequest copyWith(void Function(CreateMarketplaceItemRequest) updates) => super.copyWith((message) => updates(message as CreateMarketplaceItemRequest)) as CreateMarketplaceItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateMarketplaceItemRequest create() => CreateMarketplaceItemRequest._();
  CreateMarketplaceItemRequest createEmptyInstance() => create();
  static $pb.PbList<CreateMarketplaceItemRequest> createRepeated() => $pb.PbList<CreateMarketplaceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateMarketplaceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateMarketplaceItemRequest>(create);
  static CreateMarketplaceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get price => $_getIZ(2);
  @$pb.TagNumber(3)
  set price($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get categoryId => $_getSZ(4);
  @$pb.TagNumber(5)
  set categoryId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategoryId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategoryId() => clearField(5);
}

class UpdateMarketplaceItemRequest extends $pb.GeneratedMessage {
  factory UpdateMarketplaceItemRequest({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.int? price,
    $core.String? imageUrl,
    $core.String? categoryId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    return $result;
  }
  UpdateMarketplaceItemRequest._() : super();
  factory UpdateMarketplaceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMarketplaceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateMarketplaceItemRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..aOS(6, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMarketplaceItemRequest clone() => UpdateMarketplaceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMarketplaceItemRequest copyWith(void Function(UpdateMarketplaceItemRequest) updates) => super.copyWith((message) => updates(message as UpdateMarketplaceItemRequest)) as UpdateMarketplaceItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateMarketplaceItemRequest create() => UpdateMarketplaceItemRequest._();
  UpdateMarketplaceItemRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateMarketplaceItemRequest> createRepeated() => $pb.PbList<UpdateMarketplaceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateMarketplaceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMarketplaceItemRequest>(create);
  static UpdateMarketplaceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get price => $_getIZ(3);
  @$pb.TagNumber(4)
  set price($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get categoryId => $_getSZ(5);
  @$pb.TagNumber(6)
  set categoryId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategoryId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategoryId() => clearField(6);
}

class DeleteMarketplaceItemRequest extends $pb.GeneratedMessage {
  factory DeleteMarketplaceItemRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteMarketplaceItemRequest._() : super();
  factory DeleteMarketplaceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteMarketplaceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteMarketplaceItemRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteMarketplaceItemRequest clone() => DeleteMarketplaceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteMarketplaceItemRequest copyWith(void Function(DeleteMarketplaceItemRequest) updates) => super.copyWith((message) => updates(message as DeleteMarketplaceItemRequest)) as DeleteMarketplaceItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteMarketplaceItemRequest create() => DeleteMarketplaceItemRequest._();
  DeleteMarketplaceItemRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteMarketplaceItemRequest> createRepeated() => $pb.PbList<DeleteMarketplaceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteMarketplaceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteMarketplaceItemRequest>(create);
  static DeleteMarketplaceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetCartByUserIdRequest extends $pb.GeneratedMessage {
  factory GetCartByUserIdRequest() => create();
  GetCartByUserIdRequest._() : super();
  factory GetCartByUserIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCartByUserIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCartByUserIdRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCartByUserIdRequest clone() => GetCartByUserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCartByUserIdRequest copyWith(void Function(GetCartByUserIdRequest) updates) => super.copyWith((message) => updates(message as GetCartByUserIdRequest)) as GetCartByUserIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCartByUserIdRequest create() => GetCartByUserIdRequest._();
  GetCartByUserIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetCartByUserIdRequest> createRepeated() => $pb.PbList<GetCartByUserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCartByUserIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCartByUserIdRequest>(create);
  static GetCartByUserIdRequest? _defaultInstance;
}

class DeleteCartByUserIdRequest extends $pb.GeneratedMessage {
  factory DeleteCartByUserIdRequest() => create();
  DeleteCartByUserIdRequest._() : super();
  factory DeleteCartByUserIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCartByUserIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCartByUserIdRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCartByUserIdRequest clone() => DeleteCartByUserIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCartByUserIdRequest copyWith(void Function(DeleteCartByUserIdRequest) updates) => super.copyWith((message) => updates(message as DeleteCartByUserIdRequest)) as DeleteCartByUserIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCartByUserIdRequest create() => DeleteCartByUserIdRequest._();
  DeleteCartByUserIdRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCartByUserIdRequest> createRepeated() => $pb.PbList<DeleteCartByUserIdRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCartByUserIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCartByUserIdRequest>(create);
  static DeleteCartByUserIdRequest? _defaultInstance;
}

class AddCartItemRequest extends $pb.GeneratedMessage {
  factory AddCartItemRequest({
    $core.String? itemId,
    $core.int? quantity,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    return $result;
  }
  AddCartItemRequest._() : super();
  factory AddCartItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddCartItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddCartItemRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemId', protoName: 'itemId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddCartItemRequest clone() => AddCartItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddCartItemRequest copyWith(void Function(AddCartItemRequest) updates) => super.copyWith((message) => updates(message as AddCartItemRequest)) as AddCartItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddCartItemRequest create() => AddCartItemRequest._();
  AddCartItemRequest createEmptyInstance() => create();
  static $pb.PbList<AddCartItemRequest> createRepeated() => $pb.PbList<AddCartItemRequest>();
  @$core.pragma('dart2js:noInline')
  static AddCartItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddCartItemRequest>(create);
  static AddCartItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set quantity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);
}

class RemoveCartItemRequest extends $pb.GeneratedMessage {
  factory RemoveCartItemRequest({
    $core.String? itemId,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    return $result;
  }
  RemoveCartItemRequest._() : super();
  factory RemoveCartItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveCartItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveCartItemRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemId', protoName: 'itemId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveCartItemRequest clone() => RemoveCartItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveCartItemRequest copyWith(void Function(RemoveCartItemRequest) updates) => super.copyWith((message) => updates(message as RemoveCartItemRequest)) as RemoveCartItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveCartItemRequest create() => RemoveCartItemRequest._();
  RemoveCartItemRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveCartItemRequest> createRepeated() => $pb.PbList<RemoveCartItemRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveCartItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveCartItemRequest>(create);
  static RemoveCartItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);
}

class UpdateCartItemRequest extends $pb.GeneratedMessage {
  factory UpdateCartItemRequest({
    $core.String? itemId,
    $core.int? quantity,
  }) {
    final $result = create();
    if (itemId != null) {
      $result.itemId = itemId;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    return $result;
  }
  UpdateCartItemRequest._() : super();
  factory UpdateCartItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCartItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCartItemRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemId', protoName: 'itemId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCartItemRequest clone() => UpdateCartItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCartItemRequest copyWith(void Function(UpdateCartItemRequest) updates) => super.copyWith((message) => updates(message as UpdateCartItemRequest)) as UpdateCartItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCartItemRequest create() => UpdateCartItemRequest._();
  UpdateCartItemRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCartItemRequest> createRepeated() => $pb.PbList<UpdateCartItemRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCartItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCartItemRequest>(create);
  static UpdateCartItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set quantity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);
}

class MarketplaceItemListResponse extends $pb.GeneratedMessage {
  factory MarketplaceItemListResponse({
    $core.Iterable<MarketplaceItem>? marketplaceItemList,
  }) {
    final $result = create();
    if (marketplaceItemList != null) {
      $result.marketplaceItemList.addAll(marketplaceItemList);
    }
    return $result;
  }
  MarketplaceItemListResponse._() : super();
  factory MarketplaceItemListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketplaceItemListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarketplaceItemListResponse', createEmptyInstance: create)
    ..pc<MarketplaceItem>(1, _omitFieldNames ? '' : 'marketplaceItemList', $pb.PbFieldType.PM, protoName: 'marketplaceItemList', subBuilder: MarketplaceItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketplaceItemListResponse clone() => MarketplaceItemListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketplaceItemListResponse copyWith(void Function(MarketplaceItemListResponse) updates) => super.copyWith((message) => updates(message as MarketplaceItemListResponse)) as MarketplaceItemListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarketplaceItemListResponse create() => MarketplaceItemListResponse._();
  MarketplaceItemListResponse createEmptyInstance() => create();
  static $pb.PbList<MarketplaceItemListResponse> createRepeated() => $pb.PbList<MarketplaceItemListResponse>();
  @$core.pragma('dart2js:noInline')
  static MarketplaceItemListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketplaceItemListResponse>(create);
  static MarketplaceItemListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MarketplaceItem> get marketplaceItemList => $_getList(0);
}

class MarketplaceItemResponse extends $pb.GeneratedMessage {
  factory MarketplaceItemResponse({
    MarketplaceItem? marketplaceItem,
  }) {
    final $result = create();
    if (marketplaceItem != null) {
      $result.marketplaceItem = marketplaceItem;
    }
    return $result;
  }
  MarketplaceItemResponse._() : super();
  factory MarketplaceItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketplaceItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarketplaceItemResponse', createEmptyInstance: create)
    ..aOM<MarketplaceItem>(1, _omitFieldNames ? '' : 'marketplaceItem', protoName: 'marketplaceItem', subBuilder: MarketplaceItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketplaceItemResponse clone() => MarketplaceItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketplaceItemResponse copyWith(void Function(MarketplaceItemResponse) updates) => super.copyWith((message) => updates(message as MarketplaceItemResponse)) as MarketplaceItemResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarketplaceItemResponse create() => MarketplaceItemResponse._();
  MarketplaceItemResponse createEmptyInstance() => create();
  static $pb.PbList<MarketplaceItemResponse> createRepeated() => $pb.PbList<MarketplaceItemResponse>();
  @$core.pragma('dart2js:noInline')
  static MarketplaceItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketplaceItemResponse>(create);
  static MarketplaceItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  MarketplaceItem get marketplaceItem => $_getN(0);
  @$pb.TagNumber(1)
  set marketplaceItem(MarketplaceItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarketplaceItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarketplaceItem() => clearField(1);
  @$pb.TagNumber(1)
  MarketplaceItem ensureMarketplaceItem() => $_ensure(0);
}

class CartResponse extends $pb.GeneratedMessage {
  factory CartResponse({
    $core.Iterable<CartItem>? cartItemList,
  }) {
    final $result = create();
    if (cartItemList != null) {
      $result.cartItemList.addAll(cartItemList);
    }
    return $result;
  }
  CartResponse._() : super();
  factory CartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CartResponse', createEmptyInstance: create)
    ..pc<CartItem>(1, _omitFieldNames ? '' : 'cartItemList', $pb.PbFieldType.PM, protoName: 'cartItemList', subBuilder: CartItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CartResponse clone() => CartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CartResponse copyWith(void Function(CartResponse) updates) => super.copyWith((message) => updates(message as CartResponse)) as CartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CartResponse create() => CartResponse._();
  CartResponse createEmptyInstance() => create();
  static $pb.PbList<CartResponse> createRepeated() => $pb.PbList<CartResponse>();
  @$core.pragma('dart2js:noInline')
  static CartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartResponse>(create);
  static CartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CartItem> get cartItemList => $_getList(0);
}

class MarketplaceItem extends $pb.GeneratedMessage {
  factory MarketplaceItem({
    $core.String? id,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? name,
    $core.String? description,
    $core.int? price,
    $core.String? imageUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (imageUrl != null) {
      $result.imageUrl = imageUrl;
    }
    return $result;
  }
  MarketplaceItem._() : super();
  factory MarketplaceItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarketplaceItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarketplaceItem', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aOS(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'price', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'imageUrl', protoName: 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarketplaceItem clone() => MarketplaceItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarketplaceItem copyWith(void Function(MarketplaceItem) updates) => super.copyWith((message) => updates(message as MarketplaceItem)) as MarketplaceItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarketplaceItem create() => MarketplaceItem._();
  MarketplaceItem createEmptyInstance() => create();
  static $pb.PbList<MarketplaceItem> createRepeated() => $pb.PbList<MarketplaceItem>();
  @$core.pragma('dart2js:noInline')
  static MarketplaceItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarketplaceItem>(create);
  static MarketplaceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get createdAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set createdAt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get updatedAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set updatedAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get price => $_getIZ(5);
  @$pb.TagNumber(6)
  set price($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get imageUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set imageUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasImageUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearImageUrl() => clearField(7);
}

class CartItem extends $pb.GeneratedMessage {
  factory CartItem({
    $core.String? id,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.int? quantity,
    $core.String? cartId,
    $core.String? itemId,
    $core.bool? isConfirmed,
    $core.bool? isCheckedOut,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (cartId != null) {
      $result.cartId = cartId;
    }
    if (itemId != null) {
      $result.itemId = itemId;
    }
    if (isConfirmed != null) {
      $result.isConfirmed = isConfirmed;
    }
    if (isCheckedOut != null) {
      $result.isCheckedOut = isCheckedOut;
    }
    return $result;
  }
  CartItem._() : super();
  factory CartItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CartItem', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..aOS(3, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'cartId', protoName: 'cartId')
    ..aOS(6, _omitFieldNames ? '' : 'itemId', protoName: 'itemId')
    ..aOB(7, _omitFieldNames ? '' : 'isConfirmed', protoName: 'isConfirmed')
    ..aOB(8, _omitFieldNames ? '' : 'isCheckedOut', protoName: 'isCheckedOut')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CartItem clone() => CartItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CartItem copyWith(void Function(CartItem) updates) => super.copyWith((message) => updates(message as CartItem)) as CartItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CartItem create() => CartItem._();
  CartItem createEmptyInstance() => create();
  static $pb.PbList<CartItem> createRepeated() => $pb.PbList<CartItem>();
  @$core.pragma('dart2js:noInline')
  static CartItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartItem>(create);
  static CartItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get createdAt => $_getSZ(1);
  @$pb.TagNumber(2)
  set createdAt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get updatedAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set updatedAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get quantity => $_getIZ(3);
  @$pb.TagNumber(4)
  set quantity($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuantity() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuantity() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get cartId => $_getSZ(4);
  @$pb.TagNumber(5)
  set cartId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCartId() => $_has(4);
  @$pb.TagNumber(5)
  void clearCartId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get itemId => $_getSZ(5);
  @$pb.TagNumber(6)
  set itemId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasItemId() => $_has(5);
  @$pb.TagNumber(6)
  void clearItemId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isConfirmed => $_getBF(6);
  @$pb.TagNumber(7)
  set isConfirmed($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsConfirmed() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsConfirmed() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isCheckedOut => $_getBF(7);
  @$pb.TagNumber(8)
  set isCheckedOut($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsCheckedOut() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsCheckedOut() => clearField(8);
}

class CheckOutCartRequest extends $pb.GeneratedMessage {
  factory CheckOutCartRequest() => create();
  CheckOutCartRequest._() : super();
  factory CheckOutCartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckOutCartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckOutCartRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckOutCartRequest clone() => CheckOutCartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckOutCartRequest copyWith(void Function(CheckOutCartRequest) updates) => super.copyWith((message) => updates(message as CheckOutCartRequest)) as CheckOutCartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckOutCartRequest create() => CheckOutCartRequest._();
  CheckOutCartRequest createEmptyInstance() => create();
  static $pb.PbList<CheckOutCartRequest> createRepeated() => $pb.PbList<CheckOutCartRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckOutCartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckOutCartRequest>(create);
  static CheckOutCartRequest? _defaultInstance;
}

class CheckOutCartItemRequest extends $pb.GeneratedMessage {
  factory CheckOutCartItemRequest({
    $core.String? cartItemId,
  }) {
    final $result = create();
    if (cartItemId != null) {
      $result.cartItemId = cartItemId;
    }
    return $result;
  }
  CheckOutCartItemRequest._() : super();
  factory CheckOutCartItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckOutCartItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckOutCartItemRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cartItemId', protoName: 'cartItemId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckOutCartItemRequest clone() => CheckOutCartItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckOutCartItemRequest copyWith(void Function(CheckOutCartItemRequest) updates) => super.copyWith((message) => updates(message as CheckOutCartItemRequest)) as CheckOutCartItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckOutCartItemRequest create() => CheckOutCartItemRequest._();
  CheckOutCartItemRequest createEmptyInstance() => create();
  static $pb.PbList<CheckOutCartItemRequest> createRepeated() => $pb.PbList<CheckOutCartItemRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckOutCartItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckOutCartItemRequest>(create);
  static CheckOutCartItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cartItemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set cartItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCartItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCartItemId() => clearField(1);
}

class GetCheckedOutItemListRequest extends $pb.GeneratedMessage {
  factory GetCheckedOutItemListRequest() => create();
  GetCheckedOutItemListRequest._() : super();
  factory GetCheckedOutItemListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCheckedOutItemListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCheckedOutItemListRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCheckedOutItemListRequest clone() => GetCheckedOutItemListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCheckedOutItemListRequest copyWith(void Function(GetCheckedOutItemListRequest) updates) => super.copyWith((message) => updates(message as GetCheckedOutItemListRequest)) as GetCheckedOutItemListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCheckedOutItemListRequest create() => GetCheckedOutItemListRequest._();
  GetCheckedOutItemListRequest createEmptyInstance() => create();
  static $pb.PbList<GetCheckedOutItemListRequest> createRepeated() => $pb.PbList<GetCheckedOutItemListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCheckedOutItemListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCheckedOutItemListRequest>(create);
  static GetCheckedOutItemListRequest? _defaultInstance;
}

class CartItemListResponse extends $pb.GeneratedMessage {
  factory CartItemListResponse({
    $core.Iterable<CartItem>? cartItemList,
  }) {
    final $result = create();
    if (cartItemList != null) {
      $result.cartItemList.addAll(cartItemList);
    }
    return $result;
  }
  CartItemListResponse._() : super();
  factory CartItemListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CartItemListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CartItemListResponse', createEmptyInstance: create)
    ..pc<CartItem>(1, _omitFieldNames ? '' : 'cartItemList', $pb.PbFieldType.PM, protoName: 'cartItemList', subBuilder: CartItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CartItemListResponse clone() => CartItemListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CartItemListResponse copyWith(void Function(CartItemListResponse) updates) => super.copyWith((message) => updates(message as CartItemListResponse)) as CartItemListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CartItemListResponse create() => CartItemListResponse._();
  CartItemListResponse createEmptyInstance() => create();
  static $pb.PbList<CartItemListResponse> createRepeated() => $pb.PbList<CartItemListResponse>();
  @$core.pragma('dart2js:noInline')
  static CartItemListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CartItemListResponse>(create);
  static CartItemListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CartItem> get cartItemList => $_getList(0);
}

class ConfirmCartItemRequest extends $pb.GeneratedMessage {
  factory ConfirmCartItemRequest({
    $core.String? cartItemId,
  }) {
    final $result = create();
    if (cartItemId != null) {
      $result.cartItemId = cartItemId;
    }
    return $result;
  }
  ConfirmCartItemRequest._() : super();
  factory ConfirmCartItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmCartItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConfirmCartItemRequest', createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'cartItemId', protoName: 'cartItemId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmCartItemRequest clone() => ConfirmCartItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmCartItemRequest copyWith(void Function(ConfirmCartItemRequest) updates) => super.copyWith((message) => updates(message as ConfirmCartItemRequest)) as ConfirmCartItemRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfirmCartItemRequest create() => ConfirmCartItemRequest._();
  ConfirmCartItemRequest createEmptyInstance() => create();
  static $pb.PbList<ConfirmCartItemRequest> createRepeated() => $pb.PbList<ConfirmCartItemRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfirmCartItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmCartItemRequest>(create);
  static ConfirmCartItemRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get cartItemId => $_getSZ(0);
  @$pb.TagNumber(2)
  set cartItemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasCartItemId() => $_has(0);
  @$pb.TagNumber(2)
  void clearCartItemId() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
