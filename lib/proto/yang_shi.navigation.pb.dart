// This is a generated file - do not edit.
//
// Generated from yang_shi.navigation.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Response extends $pb.GeneratedMessage {
  factory Response({
    $core.int? code,
    Data? data,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (data != null) result.data = data;
    if (message != null) result.message = message;
    return result;
  }

  Response._();

  factory Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'navigation'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.OU3)
    ..aOM<Data>(2, _omitFieldNames ? '' : 'data', subBuilder: Data.create)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response)) as Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  @$core.override
  Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  Data get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(Data value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  Data ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);
}

class Data extends $pb.GeneratedMessage {
  factory Data({
    $core.String? defaultChannelId,
    $core.Iterable<Channel>? tabList,
    $core.int? displayNum,
  }) {
    final result = create();
    if (defaultChannelId != null) result.defaultChannelId = defaultChannelId;
    if (tabList != null) result.tabList.addAll(tabList);
    if (displayNum != null) result.displayNum = displayNum;
    return result;
  }

  Data._();

  factory Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'navigation'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'defaultChannelId',
        protoName: 'defaultChannelId')
    ..pPM<Channel>(2, _omitFieldNames ? '' : 'tabList',
        protoName: 'tabList', subBuilder: Channel.create)
    ..aI(3, _omitFieldNames ? '' : 'displayNum',
        protoName: 'displayNum', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Data copyWith(void Function(Data) updates) =>
      super.copyWith((message) => updates(message as Data)) as Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Data create() => Data._();
  @$core.override
  Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Data getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Data>(create);
  static Data? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get defaultChannelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set defaultChannelId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDefaultChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDefaultChannelId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Channel> get tabList => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get displayNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set displayNum($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDisplayNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayNum() => $_clearField(3);
}

class Channel extends $pb.GeneratedMessage {
  factory Channel({
    $core.String? name,
    $core.String? channelId,
    $core.String? channelType,
    $core.String? feedId,
    $core.String? h5Url,
    $core.String? topBarColor,
    $core.String? selectColor,
    $core.String? childNavKey,
    $core.String? customChannelKey,
    $core.int? channelTag,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (channelId != null) result.channelId = channelId;
    if (channelType != null) result.channelType = channelType;
    if (feedId != null) result.feedId = feedId;
    if (h5Url != null) result.h5Url = h5Url;
    if (topBarColor != null) result.topBarColor = topBarColor;
    if (selectColor != null) result.selectColor = selectColor;
    if (childNavKey != null) result.childNavKey = childNavKey;
    if (customChannelKey != null) result.customChannelKey = customChannelKey;
    if (channelTag != null) result.channelTag = channelTag;
    return result;
  }

  Channel._();

  factory Channel.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Channel.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Channel',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'navigation'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'channelId', protoName: 'channelId')
    ..aOS(3, _omitFieldNames ? '' : 'channelType', protoName: 'channelType')
    ..aOS(4, _omitFieldNames ? '' : 'feedId', protoName: 'feedId')
    ..aOS(5, _omitFieldNames ? '' : 'h5Url', protoName: 'h5Url')
    ..aOS(6, _omitFieldNames ? '' : 'topBarColor', protoName: 'topBarColor')
    ..aOS(7, _omitFieldNames ? '' : 'selectColor', protoName: 'selectColor')
    ..aOS(8, _omitFieldNames ? '' : 'childNavKey', protoName: 'childNavKey')
    ..aOS(9, _omitFieldNames ? '' : 'customChannelKey',
        protoName: 'customChannelKey')
    ..aI(10, _omitFieldNames ? '' : 'channelTag',
        protoName: 'channelTag', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Channel clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Channel copyWith(void Function(Channel) updates) =>
      super.copyWith((message) => updates(message as Channel)) as Channel;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Channel create() => Channel._();
  @$core.override
  Channel createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Channel getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Channel>(create);
  static Channel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get channelId => $_getSZ(1);
  @$pb.TagNumber(2)
  set channelId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChannelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get channelType => $_getSZ(2);
  @$pb.TagNumber(3)
  set channelType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasChannelType() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get feedId => $_getSZ(3);
  @$pb.TagNumber(4)
  set feedId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFeedId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeedId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get h5Url => $_getSZ(4);
  @$pb.TagNumber(5)
  set h5Url($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasH5Url() => $_has(4);
  @$pb.TagNumber(5)
  void clearH5Url() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get topBarColor => $_getSZ(5);
  @$pb.TagNumber(6)
  set topBarColor($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTopBarColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopBarColor() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get selectColor => $_getSZ(6);
  @$pb.TagNumber(7)
  set selectColor($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSelectColor() => $_has(6);
  @$pb.TagNumber(7)
  void clearSelectColor() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get childNavKey => $_getSZ(7);
  @$pb.TagNumber(8)
  set childNavKey($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasChildNavKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearChildNavKey() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get customChannelKey => $_getSZ(8);
  @$pb.TagNumber(9)
  set customChannelKey($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCustomChannelKey() => $_has(8);
  @$pb.TagNumber(9)
  void clearCustomChannelKey() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get channelTag => $_getIZ(9);
  @$pb.TagNumber(10)
  set channelTag($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasChannelTag() => $_has(9);
  @$pb.TagNumber(10)
  void clearChannelTag() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
