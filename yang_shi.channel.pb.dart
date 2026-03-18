// This is a generated file - do not edit.
//
// Generated from yang_shi.channel.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// ========== 依赖类型 ==========
/// 来自 imgtagModel 的定义
class Imgtag extends $pb.GeneratedMessage {
  factory Imgtag({
    $core.String? id,
    $core.String? text,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (text != null) result.text = text;
    return result;
  }

  Imgtag._();

  factory Imgtag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Imgtag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Imgtag',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Imgtag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Imgtag copyWith(void Function(Imgtag) updates) =>
      super.copyWith((message) => updates(message as Imgtag)) as Imgtag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Imgtag create() => Imgtag._();
  @$core.override
  Imgtag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Imgtag getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Imgtag>(create);
  static Imgtag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);
}

class ImgtagVer extends $pb.GeneratedMessage {
  factory ImgtagVer({
    $core.Iterable<Imgtag>? tag1,
    $core.Iterable<Imgtag>? tag2,
    $core.Iterable<Imgtag>? tag3,
    $core.Iterable<Imgtag>? tag4,
  }) {
    final result = create();
    if (tag1 != null) result.tag1.addAll(tag1);
    if (tag2 != null) result.tag2.addAll(tag2);
    if (tag3 != null) result.tag3.addAll(tag3);
    if (tag4 != null) result.tag4.addAll(tag4);
    return result;
  }

  ImgtagVer._();

  factory ImgtagVer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImgtagVer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImgtagVer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..pPM<Imgtag>(1, _omitFieldNames ? '' : 'tag1',
        protoName: 'tag_1', subBuilder: Imgtag.create)
    ..pPM<Imgtag>(2, _omitFieldNames ? '' : 'tag2',
        protoName: 'tag_2', subBuilder: Imgtag.create)
    ..pPM<Imgtag>(3, _omitFieldNames ? '' : 'tag3',
        protoName: 'tag_3', subBuilder: Imgtag.create)
    ..pPM<Imgtag>(4, _omitFieldNames ? '' : 'tag4',
        protoName: 'tag_4', subBuilder: Imgtag.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImgtagVer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImgtagVer copyWith(void Function(ImgtagVer) updates) =>
      super.copyWith((message) => updates(message as ImgtagVer)) as ImgtagVer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImgtagVer create() => ImgtagVer._();
  @$core.override
  ImgtagVer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImgtagVer getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImgtagVer>(create);
  static ImgtagVer? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Imgtag> get tag1 => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<Imgtag> get tag2 => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<Imgtag> get tag3 => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<Imgtag> get tag4 => $_getList(3);
}

/// 来自 TvChannelListData 的定义
class TvChannelListData extends $pb.GeneratedMessage {
  factory TvChannelListData({
    $core.String? dataType,
    $core.String? channelName,
    $core.String? channelCode,
    $core.String? pid,
    $core.String? tvLogo,
    $core.String? streamId,
    $core.bool? isVip,
    $core.bool? is4K,
    $core.String? timeShiftReviewFlag,
    $core.Iterable<$core.String>? programDates,
    $core.String? channelType,
    $core.String? selectTvLogo,
    $core.String? coverUrl,
    $core.bool? isLimitedFree,
    $core.Iterable<$core.int>? viewRights,
    ImgtagVer? imgtagVer,
    $core.bool? isScreenFlag,
    $core.String? payType,
  }) {
    final result = create();
    if (dataType != null) result.dataType = dataType;
    if (channelName != null) result.channelName = channelName;
    if (channelCode != null) result.channelCode = channelCode;
    if (pid != null) result.pid = pid;
    if (tvLogo != null) result.tvLogo = tvLogo;
    if (streamId != null) result.streamId = streamId;
    if (isVip != null) result.isVip = isVip;
    if (is4K != null) result.is4K = is4K;
    if (timeShiftReviewFlag != null)
      result.timeShiftReviewFlag = timeShiftReviewFlag;
    if (programDates != null) result.programDates.addAll(programDates);
    if (channelType != null) result.channelType = channelType;
    if (selectTvLogo != null) result.selectTvLogo = selectTvLogo;
    if (coverUrl != null) result.coverUrl = coverUrl;
    if (isLimitedFree != null) result.isLimitedFree = isLimitedFree;
    if (viewRights != null) result.viewRights.addAll(viewRights);
    if (imgtagVer != null) result.imgtagVer = imgtagVer;
    if (isScreenFlag != null) result.isScreenFlag = isScreenFlag;
    if (payType != null) result.payType = payType;
    return result;
  }

  TvChannelListData._();

  factory TvChannelListData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TvChannelListData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TvChannelListData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataType', protoName: 'dataType')
    ..aOS(2, _omitFieldNames ? '' : 'channelName', protoName: 'channelName')
    ..aOS(3, _omitFieldNames ? '' : 'channelCode', protoName: 'channelCode')
    ..aOS(4, _omitFieldNames ? '' : 'pid')
    ..aOS(5, _omitFieldNames ? '' : 'tvLogo', protoName: 'tvLogo')
    ..aOS(6, _omitFieldNames ? '' : 'streamId', protoName: 'streamId')
    ..aOB(7, _omitFieldNames ? '' : 'isVip', protoName: 'isVip')
    ..aOB(8, _omitFieldNames ? '' : 'is4K', protoName: 'is4K')
    ..aOS(9, _omitFieldNames ? '' : 'timeShiftReviewFlag',
        protoName: 'timeShiftReviewFlag')
    ..pPS(10, _omitFieldNames ? '' : 'programDates', protoName: 'programDates')
    ..aOS(11, _omitFieldNames ? '' : 'channelType', protoName: 'channelType')
    ..aOS(12, _omitFieldNames ? '' : 'selectTvLogo', protoName: 'selectTvLogo')
    ..aOS(13, _omitFieldNames ? '' : 'coverUrl', protoName: 'coverUrl')
    ..aOB(14, _omitFieldNames ? '' : 'isLimitedFree',
        protoName: 'isLimitedFree')
    ..p<$core.int>(15, _omitFieldNames ? '' : 'viewRights', $pb.PbFieldType.KU3,
        protoName: 'viewRights')
    ..aOM<ImgtagVer>(16, _omitFieldNames ? '' : 'imgtagVer',
        protoName: 'imgtagVer', subBuilder: ImgtagVer.create)
    ..aOB(17, _omitFieldNames ? '' : 'isScreenFlag', protoName: 'isScreenFlag')
    ..aOS(18, _omitFieldNames ? '' : 'payType', protoName: 'payType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TvChannelListData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TvChannelListData copyWith(void Function(TvChannelListData) updates) =>
      super.copyWith((message) => updates(message as TvChannelListData))
          as TvChannelListData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvChannelListData create() => TvChannelListData._();
  @$core.override
  TvChannelListData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TvChannelListData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TvChannelListData>(create);
  static TvChannelListData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataType => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get channelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set channelName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChannelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get channelCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set channelCode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasChannelCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelCode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get pid => $_getSZ(3);
  @$pb.TagNumber(4)
  set pid($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPid() => $_has(3);
  @$pb.TagNumber(4)
  void clearPid() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get tvLogo => $_getSZ(4);
  @$pb.TagNumber(5)
  set tvLogo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTvLogo() => $_has(4);
  @$pb.TagNumber(5)
  void clearTvLogo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get streamId => $_getSZ(5);
  @$pb.TagNumber(6)
  set streamId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStreamId() => $_has(5);
  @$pb.TagNumber(6)
  void clearStreamId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isVip => $_getBF(6);
  @$pb.TagNumber(7)
  set isVip($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsVip() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsVip() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get is4K => $_getBF(7);
  @$pb.TagNumber(8)
  set is4K($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIs4K() => $_has(7);
  @$pb.TagNumber(8)
  void clearIs4K() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get timeShiftReviewFlag => $_getSZ(8);
  @$pb.TagNumber(9)
  set timeShiftReviewFlag($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTimeShiftReviewFlag() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimeShiftReviewFlag() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get programDates => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get channelType => $_getSZ(10);
  @$pb.TagNumber(11)
  set channelType($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasChannelType() => $_has(10);
  @$pb.TagNumber(11)
  void clearChannelType() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get selectTvLogo => $_getSZ(11);
  @$pb.TagNumber(12)
  set selectTvLogo($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasSelectTvLogo() => $_has(11);
  @$pb.TagNumber(12)
  void clearSelectTvLogo() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get coverUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set coverUrl($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCoverUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearCoverUrl() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.bool get isLimitedFree => $_getBF(13);
  @$pb.TagNumber(14)
  set isLimitedFree($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasIsLimitedFree() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsLimitedFree() => $_clearField(14);

  @$pb.TagNumber(15)
  $pb.PbList<$core.int> get viewRights => $_getList(14);

  @$pb.TagNumber(16)
  ImgtagVer get imgtagVer => $_getN(15);
  @$pb.TagNumber(16)
  set imgtagVer(ImgtagVer value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasImgtagVer() => $_has(15);
  @$pb.TagNumber(16)
  void clearImgtagVer() => $_clearField(16);
  @$pb.TagNumber(16)
  ImgtagVer ensureImgtagVer() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.bool get isScreenFlag => $_getBF(16);
  @$pb.TagNumber(17)
  set isScreenFlag($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasIsScreenFlag() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsScreenFlag() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get payType => $_getSZ(17);
  @$pb.TagNumber(18)
  set payType($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasPayType() => $_has(17);
  @$pb.TagNumber(18)
  void clearPayType() => $_clearField(18);
}

class Action extends $pb.GeneratedMessage {
  factory Action({
    $core.String? id,
    $core.String? actionType,
    $core.String? targetTitle,
    $core.String? secondId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (actionType != null) result.actionType = actionType;
    if (targetTitle != null) result.targetTitle = targetTitle;
    if (secondId != null) result.secondId = secondId;
    return result;
  }

  Action._();

  factory Action.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Action.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Action',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'actionType', protoName: 'actionType')
    ..aOS(3, _omitFieldNames ? '' : 'targetTitle', protoName: 'targetTitle')
    ..aOS(4, _omitFieldNames ? '' : 'secondId', protoName: 'secondId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Action clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Action copyWith(void Function(Action) updates) =>
      super.copyWith((message) => updates(message as Action)) as Action;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Action create() => Action._();
  @$core.override
  Action createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Action getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Action>(create);
  static Action? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get actionType => $_getSZ(1);
  @$pb.TagNumber(2)
  set actionType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get targetTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetTitle($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get secondId => $_getSZ(3);
  @$pb.TagNumber(4)
  set secondId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSecondId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSecondId() => $_clearField(4);
}

class RecommendApiData extends $pb.GeneratedMessage {
  factory RecommendApiData({
    $core.String? dataType,
    $core.String? sceneId,
    $core.String? categoryIds,
    $core.int? recommendNum,
    $core.String? path,
    $core.String? isFilter,
    $core.Iterable<RecommendApiManualData>? manualDataList,
    $core.String? apiAction,
  }) {
    final result = create();
    if (dataType != null) result.dataType = dataType;
    if (sceneId != null) result.sceneId = sceneId;
    if (categoryIds != null) result.categoryIds = categoryIds;
    if (recommendNum != null) result.recommendNum = recommendNum;
    if (path != null) result.path = path;
    if (isFilter != null) result.isFilter = isFilter;
    if (manualDataList != null) result.manualDataList.addAll(manualDataList);
    if (apiAction != null) result.apiAction = apiAction;
    return result;
  }

  RecommendApiData._();

  factory RecommendApiData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecommendApiData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecommendApiData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataType', protoName: 'dataType')
    ..aOS(2, _omitFieldNames ? '' : 'sceneId', protoName: 'sceneId')
    ..aOS(3, _omitFieldNames ? '' : 'categoryIds', protoName: 'categoryIds')
    ..aI(4, _omitFieldNames ? '' : 'recommendNum', protoName: 'recommendNum')
    ..aOS(5, _omitFieldNames ? '' : 'path')
    ..aOS(6, _omitFieldNames ? '' : 'isFilter', protoName: 'isFilter')
    ..pPM<RecommendApiManualData>(7, _omitFieldNames ? '' : 'manualDataList',
        protoName: 'manualDataList', subBuilder: RecommendApiManualData.create)
    ..aOS(8, _omitFieldNames ? '' : 'apiAction', protoName: 'apiAction')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendApiData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendApiData copyWith(void Function(RecommendApiData) updates) =>
      super.copyWith((message) => updates(message as RecommendApiData))
          as RecommendApiData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecommendApiData create() => RecommendApiData._();
  @$core.override
  RecommendApiData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecommendApiData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecommendApiData>(create);
  static RecommendApiData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataType => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sceneId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sceneId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSceneId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSceneId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get categoryIds => $_getSZ(2);
  @$pb.TagNumber(3)
  set categoryIds($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCategoryIds() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategoryIds() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get recommendNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set recommendNum($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRecommendNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecommendNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get path => $_getSZ(4);
  @$pb.TagNumber(5)
  set path($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearPath() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get isFilter => $_getSZ(5);
  @$pb.TagNumber(6)
  set isFilter($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsFilter() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsFilter() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<RecommendApiManualData> get manualDataList => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get apiAction => $_getSZ(7);
  @$pb.TagNumber(8)
  set apiAction($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasApiAction() => $_has(7);
  @$pb.TagNumber(8)
  void clearApiAction() => $_clearField(8);
}

class RecommendApiManualData extends $pb.GeneratedMessage {
  factory RecommendApiManualData({
    Action? action,
    $core.String? dataType,
    $core.String? title,
    $core.String? subTitle,
    $core.String? coverUrl,
    $core.String? cpId,
    $core.String? cpName,
    $core.String? cpAvatar,
    $core.String? vid,
    $core.String? cid,
    $core.bool? isVip,
    $core.int? duration,
    $core.int? position,
    ImgtagVer? imgtagVer,
    $core.int? vidNum,
    $core.int? updateNum,
    $core.String? payType,
  }) {
    final result = create();
    if (action != null) result.action = action;
    if (dataType != null) result.dataType = dataType;
    if (title != null) result.title = title;
    if (subTitle != null) result.subTitle = subTitle;
    if (coverUrl != null) result.coverUrl = coverUrl;
    if (cpId != null) result.cpId = cpId;
    if (cpName != null) result.cpName = cpName;
    if (cpAvatar != null) result.cpAvatar = cpAvatar;
    if (vid != null) result.vid = vid;
    if (cid != null) result.cid = cid;
    if (isVip != null) result.isVip = isVip;
    if (duration != null) result.duration = duration;
    if (position != null) result.position = position;
    if (imgtagVer != null) result.imgtagVer = imgtagVer;
    if (vidNum != null) result.vidNum = vidNum;
    if (updateNum != null) result.updateNum = updateNum;
    if (payType != null) result.payType = payType;
    return result;
  }

  RecommendApiManualData._();

  factory RecommendApiManualData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecommendApiManualData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecommendApiManualData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOM<Action>(1, _omitFieldNames ? '' : 'action', subBuilder: Action.create)
    ..aOS(2, _omitFieldNames ? '' : 'dataType', protoName: 'dataType')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'subTitle', protoName: 'subTitle')
    ..aOS(5, _omitFieldNames ? '' : 'coverUrl', protoName: 'coverUrl')
    ..aOS(6, _omitFieldNames ? '' : 'cpId', protoName: 'cpId')
    ..aOS(7, _omitFieldNames ? '' : 'cpName', protoName: 'cpName')
    ..aOS(8, _omitFieldNames ? '' : 'cpAvatar', protoName: 'cpAvatar')
    ..aOS(9, _omitFieldNames ? '' : 'vid')
    ..aOS(10, _omitFieldNames ? '' : 'cid')
    ..aOB(11, _omitFieldNames ? '' : 'isVip', protoName: 'isVip')
    ..aI(12, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'position', fieldType: $pb.PbFieldType.OU3)
    ..aOM<ImgtagVer>(14, _omitFieldNames ? '' : 'imgtagVer',
        protoName: 'imgtagVer', subBuilder: ImgtagVer.create)
    ..aI(15, _omitFieldNames ? '' : 'vidNum',
        protoName: 'vidNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'updateNum',
        protoName: 'updateNum', fieldType: $pb.PbFieldType.OU3)
    ..aOS(17, _omitFieldNames ? '' : 'payType', protoName: 'payType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendApiManualData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendApiManualData copyWith(
          void Function(RecommendApiManualData) updates) =>
      super.copyWith((message) => updates(message as RecommendApiManualData))
          as RecommendApiManualData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecommendApiManualData create() => RecommendApiManualData._();
  @$core.override
  RecommendApiManualData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecommendApiManualData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecommendApiManualData>(create);
  static RecommendApiManualData? _defaultInstance;

  @$pb.TagNumber(1)
  Action get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(Action value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => $_clearField(1);
  @$pb.TagNumber(1)
  Action ensureAction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get dataType => $_getSZ(1);
  @$pb.TagNumber(2)
  set dataType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDataType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get coverUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCoverUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get cpId => $_getSZ(5);
  @$pb.TagNumber(6)
  set cpId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCpId() => $_has(5);
  @$pb.TagNumber(6)
  void clearCpId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get cpName => $_getSZ(6);
  @$pb.TagNumber(7)
  set cpName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCpName() => $_has(6);
  @$pb.TagNumber(7)
  void clearCpName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get cpAvatar => $_getSZ(7);
  @$pb.TagNumber(8)
  set cpAvatar($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCpAvatar() => $_has(7);
  @$pb.TagNumber(8)
  void clearCpAvatar() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get vid => $_getSZ(8);
  @$pb.TagNumber(9)
  set vid($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasVid() => $_has(8);
  @$pb.TagNumber(9)
  void clearVid() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get cid => $_getSZ(9);
  @$pb.TagNumber(10)
  set cid($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCid() => $_has(9);
  @$pb.TagNumber(10)
  void clearCid() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get isVip => $_getBF(10);
  @$pb.TagNumber(11)
  set isVip($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIsVip() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsVip() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get duration => $_getIZ(11);
  @$pb.TagNumber(12)
  set duration($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDuration() => $_has(11);
  @$pb.TagNumber(12)
  void clearDuration() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get position => $_getIZ(12);
  @$pb.TagNumber(13)
  set position($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasPosition() => $_has(12);
  @$pb.TagNumber(13)
  void clearPosition() => $_clearField(13);

  @$pb.TagNumber(14)
  ImgtagVer get imgtagVer => $_getN(13);
  @$pb.TagNumber(14)
  set imgtagVer(ImgtagVer value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasImgtagVer() => $_has(13);
  @$pb.TagNumber(14)
  void clearImgtagVer() => $_clearField(14);
  @$pb.TagNumber(14)
  ImgtagVer ensureImgtagVer() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.int get vidNum => $_getIZ(14);
  @$pb.TagNumber(15)
  set vidNum($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasVidNum() => $_has(14);
  @$pb.TagNumber(15)
  void clearVidNum() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get updateNum => $_getIZ(15);
  @$pb.TagNumber(16)
  set updateNum($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasUpdateNum() => $_has(15);
  @$pb.TagNumber(16)
  void clearUpdateNum() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get payType => $_getSZ(16);
  @$pb.TagNumber(17)
  set payType($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasPayType() => $_has(16);
  @$pb.TagNumber(17)
  void clearPayType() => $_clearField(17);
}

class VipModuleData extends $pb.GeneratedMessage {
  factory VipModuleData({
    $core.String? dataType,
    $core.String? displayText,
  }) {
    final result = create();
    if (dataType != null) result.dataType = dataType;
    if (displayText != null) result.displayText = displayText;
    return result;
  }

  VipModuleData._();

  factory VipModuleData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VipModuleData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VipModuleData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataType', protoName: 'dataType')
    ..aOS(2, _omitFieldNames ? '' : 'displayText', protoName: 'displayText')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VipModuleData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VipModuleData copyWith(void Function(VipModuleData) updates) =>
      super.copyWith((message) => updates(message as VipModuleData))
          as VipModuleData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VipModuleData create() => VipModuleData._();
  @$core.override
  VipModuleData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VipModuleData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VipModuleData>(create);
  static VipModuleData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataType => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDataType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayText => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayText() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayText() => $_clearField(2);
}

class ActivityData extends $pb.GeneratedMessage {
  factory ActivityData({
    $core.String? picture,
  }) {
    final result = create();
    if (picture != null) result.picture = picture;
    return result;
  }

  ActivityData._();

  factory ActivityData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ActivityData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActivityData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'picture')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityData copyWith(void Function(ActivityData) updates) =>
      super.copyWith((message) => updates(message as ActivityData))
          as ActivityData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityData create() => ActivityData._();
  @$core.override
  ActivityData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ActivityData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActivityData>(create);
  static ActivityData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get picture => $_getSZ(0);
  @$pb.TagNumber(1)
  set picture($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPicture() => $_has(0);
  @$pb.TagNumber(1)
  void clearPicture() => $_clearField(1);
}

/// ========== 当前主要消息 ==========
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
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
    $core.String? feedId,
    $core.Iterable<Module>? feedModuleList,
  }) {
    final result = create();
    if (feedId != null) result.feedId = feedId;
    if (feedModuleList != null) result.feedModuleList.addAll(feedModuleList);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'feedId', protoName: 'feedId')
    ..pPM<Module>(2, _omitFieldNames ? '' : 'feedModuleList',
        protoName: 'feedModuleList', subBuilder: Module.create)
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
  $core.String get feedId => $_getSZ(0);
  @$pb.TagNumber(1)
  set feedId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFeedId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeedId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Module> get feedModuleList => $_getList(1);
}

class Module extends $pb.GeneratedMessage {
  factory Module({
    $core.String? moduleId,
    $core.String? moduleType,
    $core.Iterable<ModuleData>? dataList,
    $core.String? title,
    $core.String? bgColor,
    $core.String? bg,
    $core.int? row,
    $core.int? rowNum,
    $core.bool? showMore,
    $core.String? showMoreUrl,
    $core.bool? showChange,
    $core.bool? showPagination,
    $core.String? dataSource,
    RecommendApiData? dataRecommendApi,
    $core.Iterable<TvChannelListData>? dataTvChannelList,
    $core.String? exString,
    $core.String? titlePic,
    VipModuleData? dataVipModule,
    $core.String? exString2,
    $core.String? titleIcon,
    $core.String? styleType,
    ActivityData? dataActivity,
  }) {
    final result = create();
    if (moduleId != null) result.moduleId = moduleId;
    if (moduleType != null) result.moduleType = moduleType;
    if (dataList != null) result.dataList.addAll(dataList);
    if (title != null) result.title = title;
    if (bgColor != null) result.bgColor = bgColor;
    if (bg != null) result.bg = bg;
    if (row != null) result.row = row;
    if (rowNum != null) result.rowNum = rowNum;
    if (showMore != null) result.showMore = showMore;
    if (showMoreUrl != null) result.showMoreUrl = showMoreUrl;
    if (showChange != null) result.showChange = showChange;
    if (showPagination != null) result.showPagination = showPagination;
    if (dataSource != null) result.dataSource = dataSource;
    if (dataRecommendApi != null) result.dataRecommendApi = dataRecommendApi;
    if (dataTvChannelList != null)
      result.dataTvChannelList.addAll(dataTvChannelList);
    if (exString != null) result.exString = exString;
    if (titlePic != null) result.titlePic = titlePic;
    if (dataVipModule != null) result.dataVipModule = dataVipModule;
    if (exString2 != null) result.exString2 = exString2;
    if (titleIcon != null) result.titleIcon = titleIcon;
    if (styleType != null) result.styleType = styleType;
    if (dataActivity != null) result.dataActivity = dataActivity;
    return result;
  }

  Module._();

  factory Module.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Module.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Module',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'moduleId', protoName: 'moduleId')
    ..aOS(2, _omitFieldNames ? '' : 'moduleType', protoName: 'moduleType')
    ..pPM<ModuleData>(3, _omitFieldNames ? '' : 'dataList',
        protoName: 'dataList', subBuilder: ModuleData.create)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'bgColor', protoName: 'bgColor')
    ..aOS(6, _omitFieldNames ? '' : 'bg')
    ..aI(7, _omitFieldNames ? '' : 'row')
    ..aI(8, _omitFieldNames ? '' : 'rowNum', protoName: 'rowNum')
    ..aOB(9, _omitFieldNames ? '' : 'showMore', protoName: 'showMore')
    ..aOS(10, _omitFieldNames ? '' : 'showMoreUrl', protoName: 'showMoreUrl')
    ..aOB(11, _omitFieldNames ? '' : 'showChange', protoName: 'showChange')
    ..aOB(12, _omitFieldNames ? '' : 'showPagination',
        protoName: 'showPagination')
    ..aOS(13, _omitFieldNames ? '' : 'dataSource', protoName: 'dataSource')
    ..aOM<RecommendApiData>(14, _omitFieldNames ? '' : 'dataRecommendApi',
        protoName: 'dataRecommendApi', subBuilder: RecommendApiData.create)
    ..pPM<TvChannelListData>(15, _omitFieldNames ? '' : 'dataTvChannelList',
        protoName: 'dataTvChannelList', subBuilder: TvChannelListData.create)
    ..aOS(16, _omitFieldNames ? '' : 'exString', protoName: 'exString')
    ..aOS(17, _omitFieldNames ? '' : 'titlePic', protoName: 'titlePic')
    ..aOM<VipModuleData>(18, _omitFieldNames ? '' : 'dataVipModule',
        protoName: 'dataVipModule', subBuilder: VipModuleData.create)
    ..aOS(19, _omitFieldNames ? '' : 'exString2', protoName: 'exString2')
    ..aOS(20, _omitFieldNames ? '' : 'titleIcon', protoName: 'titleIcon')
    ..aOS(21, _omitFieldNames ? '' : 'styleType', protoName: 'styleType')
    ..aOM<ActivityData>(22, _omitFieldNames ? '' : 'dataActivity',
        protoName: 'dataActivity', subBuilder: ActivityData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Module clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Module copyWith(void Function(Module) updates) =>
      super.copyWith((message) => updates(message as Module)) as Module;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Module create() => Module._();
  @$core.override
  Module createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Module getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Module>(create);
  static Module? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get moduleId => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasModuleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get moduleType => $_getSZ(1);
  @$pb.TagNumber(2)
  set moduleType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModuleType() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleType() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<ModuleData> get dataList => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get bgColor => $_getSZ(4);
  @$pb.TagNumber(5)
  set bgColor($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBgColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearBgColor() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bg => $_getSZ(5);
  @$pb.TagNumber(6)
  set bg($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBg() => $_has(5);
  @$pb.TagNumber(6)
  void clearBg() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get row => $_getIZ(6);
  @$pb.TagNumber(7)
  set row($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRow() => $_has(6);
  @$pb.TagNumber(7)
  void clearRow() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get rowNum => $_getIZ(7);
  @$pb.TagNumber(8)
  set rowNum($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRowNum() => $_has(7);
  @$pb.TagNumber(8)
  void clearRowNum() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get showMore => $_getBF(8);
  @$pb.TagNumber(9)
  set showMore($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasShowMore() => $_has(8);
  @$pb.TagNumber(9)
  void clearShowMore() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get showMoreUrl => $_getSZ(9);
  @$pb.TagNumber(10)
  set showMoreUrl($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasShowMoreUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearShowMoreUrl() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get showChange => $_getBF(10);
  @$pb.TagNumber(11)
  set showChange($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasShowChange() => $_has(10);
  @$pb.TagNumber(11)
  void clearShowChange() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get showPagination => $_getBF(11);
  @$pb.TagNumber(12)
  set showPagination($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasShowPagination() => $_has(11);
  @$pb.TagNumber(12)
  void clearShowPagination() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get dataSource => $_getSZ(12);
  @$pb.TagNumber(13)
  set dataSource($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDataSource() => $_has(12);
  @$pb.TagNumber(13)
  void clearDataSource() => $_clearField(13);

  @$pb.TagNumber(14)
  RecommendApiData get dataRecommendApi => $_getN(13);
  @$pb.TagNumber(14)
  set dataRecommendApi(RecommendApiData value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasDataRecommendApi() => $_has(13);
  @$pb.TagNumber(14)
  void clearDataRecommendApi() => $_clearField(14);
  @$pb.TagNumber(14)
  RecommendApiData ensureDataRecommendApi() => $_ensure(13);

  @$pb.TagNumber(15)
  $pb.PbList<TvChannelListData> get dataTvChannelList => $_getList(14);

  @$pb.TagNumber(16)
  $core.String get exString => $_getSZ(15);
  @$pb.TagNumber(16)
  set exString($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasExString() => $_has(15);
  @$pb.TagNumber(16)
  void clearExString() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get titlePic => $_getSZ(16);
  @$pb.TagNumber(17)
  set titlePic($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasTitlePic() => $_has(16);
  @$pb.TagNumber(17)
  void clearTitlePic() => $_clearField(17);

  @$pb.TagNumber(18)
  VipModuleData get dataVipModule => $_getN(17);
  @$pb.TagNumber(18)
  set dataVipModule(VipModuleData value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasDataVipModule() => $_has(17);
  @$pb.TagNumber(18)
  void clearDataVipModule() => $_clearField(18);
  @$pb.TagNumber(18)
  VipModuleData ensureDataVipModule() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.String get exString2 => $_getSZ(18);
  @$pb.TagNumber(19)
  set exString2($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasExString2() => $_has(18);
  @$pb.TagNumber(19)
  void clearExString2() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get titleIcon => $_getSZ(19);
  @$pb.TagNumber(20)
  set titleIcon($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasTitleIcon() => $_has(19);
  @$pb.TagNumber(20)
  void clearTitleIcon() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get styleType => $_getSZ(20);
  @$pb.TagNumber(21)
  set styleType($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasStyleType() => $_has(20);
  @$pb.TagNumber(21)
  void clearStyleType() => $_clearField(21);

  @$pb.TagNumber(22)
  ActivityData get dataActivity => $_getN(21);
  @$pb.TagNumber(22)
  set dataActivity(ActivityData value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasDataActivity() => $_has(21);
  @$pb.TagNumber(22)
  void clearDataActivity() => $_clearField(22);
  @$pb.TagNumber(22)
  ActivityData ensureDataActivity() => $_ensure(21);
}

class ModuleData extends $pb.GeneratedMessage {
  factory ModuleData({
    Action? action,
    $core.String? dataType,
    $core.String? title,
    $core.String? subTitle,
    $core.String? coverUrl,
    $core.String? topBarColor,
    $core.String? cpId,
    $core.String? cpName,
    $core.String? cpAvatar,
    $core.bool? isVip,
    $core.String? playVid,
    $core.String? vid,
    $core.String? cid,
    $core.String? pid,
    $core.String? lid,
    $core.String? linkUrl,
    $core.int? duration,
    $core.String? exString,
    ImgtagVer? imgtagVer,
    $core.int? vidNum,
    $core.int? updateNum,
    $core.String? exString2,
    $core.String? coverUrl1,
    $core.String? periods,
    $core.String? payType,
  }) {
    final result = create();
    if (action != null) result.action = action;
    if (dataType != null) result.dataType = dataType;
    if (title != null) result.title = title;
    if (subTitle != null) result.subTitle = subTitle;
    if (coverUrl != null) result.coverUrl = coverUrl;
    if (topBarColor != null) result.topBarColor = topBarColor;
    if (cpId != null) result.cpId = cpId;
    if (cpName != null) result.cpName = cpName;
    if (cpAvatar != null) result.cpAvatar = cpAvatar;
    if (isVip != null) result.isVip = isVip;
    if (playVid != null) result.playVid = playVid;
    if (vid != null) result.vid = vid;
    if (cid != null) result.cid = cid;
    if (pid != null) result.pid = pid;
    if (lid != null) result.lid = lid;
    if (linkUrl != null) result.linkUrl = linkUrl;
    if (duration != null) result.duration = duration;
    if (exString != null) result.exString = exString;
    if (imgtagVer != null) result.imgtagVer = imgtagVer;
    if (vidNum != null) result.vidNum = vidNum;
    if (updateNum != null) result.updateNum = updateNum;
    if (exString2 != null) result.exString2 = exString2;
    if (coverUrl1 != null) result.coverUrl1 = coverUrl1;
    if (periods != null) result.periods = periods;
    if (payType != null) result.payType = payType;
    return result;
  }

  ModuleData._();

  factory ModuleData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'channel'),
      createEmptyInstance: create)
    ..aOM<Action>(1, _omitFieldNames ? '' : 'action', subBuilder: Action.create)
    ..aOS(2, _omitFieldNames ? '' : 'dataType', protoName: 'dataType')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'subTitle', protoName: 'subTitle')
    ..aOS(5, _omitFieldNames ? '' : 'coverUrl', protoName: 'coverUrl')
    ..aOS(6, _omitFieldNames ? '' : 'topBarColor', protoName: 'topBarColor')
    ..aOS(7, _omitFieldNames ? '' : 'cpId', protoName: 'cpId')
    ..aOS(8, _omitFieldNames ? '' : 'cpName', protoName: 'cpName')
    ..aOS(9, _omitFieldNames ? '' : 'cpAvatar', protoName: 'cpAvatar')
    ..aOB(10, _omitFieldNames ? '' : 'isVip', protoName: 'isVip')
    ..aOS(11, _omitFieldNames ? '' : 'playVid', protoName: 'playVid')
    ..aOS(12, _omitFieldNames ? '' : 'vid')
    ..aOS(13, _omitFieldNames ? '' : 'cid')
    ..aOS(14, _omitFieldNames ? '' : 'pid')
    ..aOS(15, _omitFieldNames ? '' : 'lid')
    ..aOS(16, _omitFieldNames ? '' : 'linkUrl', protoName: 'linkUrl')
    ..aI(17, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3)
    ..aOS(18, _omitFieldNames ? '' : 'exString', protoName: 'exString')
    ..aOM<ImgtagVer>(19, _omitFieldNames ? '' : 'imgtagVer',
        protoName: 'imgtagVer', subBuilder: ImgtagVer.create)
    ..aI(20, _omitFieldNames ? '' : 'vidNum',
        protoName: 'vidNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(21, _omitFieldNames ? '' : 'updateNum',
        protoName: 'updateNum', fieldType: $pb.PbFieldType.OU3)
    ..aOS(22, _omitFieldNames ? '' : 'exString2', protoName: 'exString2')
    ..aOS(23, _omitFieldNames ? '' : 'coverUrl1', protoName: 'coverUrl1')
    ..aOS(24, _omitFieldNames ? '' : 'periods')
    ..aOS(25, _omitFieldNames ? '' : 'payType', protoName: 'payType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModuleData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModuleData copyWith(void Function(ModuleData) updates) =>
      super.copyWith((message) => updates(message as ModuleData)) as ModuleData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleData create() => ModuleData._();
  @$core.override
  ModuleData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ModuleData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleData>(create);
  static ModuleData? _defaultInstance;

  @$pb.TagNumber(1)
  Action get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(Action value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => $_clearField(1);
  @$pb.TagNumber(1)
  Action ensureAction() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get dataType => $_getSZ(1);
  @$pb.TagNumber(2)
  set dataType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDataType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get coverUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCoverUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get topBarColor => $_getSZ(5);
  @$pb.TagNumber(6)
  set topBarColor($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTopBarColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopBarColor() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get cpId => $_getSZ(6);
  @$pb.TagNumber(7)
  set cpId($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCpId() => $_has(6);
  @$pb.TagNumber(7)
  void clearCpId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get cpName => $_getSZ(7);
  @$pb.TagNumber(8)
  set cpName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCpName() => $_has(7);
  @$pb.TagNumber(8)
  void clearCpName() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get cpAvatar => $_getSZ(8);
  @$pb.TagNumber(9)
  set cpAvatar($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCpAvatar() => $_has(8);
  @$pb.TagNumber(9)
  void clearCpAvatar() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isVip => $_getBF(9);
  @$pb.TagNumber(10)
  set isVip($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsVip() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsVip() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get playVid => $_getSZ(10);
  @$pb.TagNumber(11)
  set playVid($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPlayVid() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlayVid() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get vid => $_getSZ(11);
  @$pb.TagNumber(12)
  set vid($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasVid() => $_has(11);
  @$pb.TagNumber(12)
  void clearVid() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get cid => $_getSZ(12);
  @$pb.TagNumber(13)
  set cid($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCid() => $_has(12);
  @$pb.TagNumber(13)
  void clearCid() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get pid => $_getSZ(13);
  @$pb.TagNumber(14)
  set pid($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasPid() => $_has(13);
  @$pb.TagNumber(14)
  void clearPid() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get lid => $_getSZ(14);
  @$pb.TagNumber(15)
  set lid($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLid() => $_has(14);
  @$pb.TagNumber(15)
  void clearLid() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get linkUrl => $_getSZ(15);
  @$pb.TagNumber(16)
  set linkUrl($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasLinkUrl() => $_has(15);
  @$pb.TagNumber(16)
  void clearLinkUrl() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get duration => $_getIZ(16);
  @$pb.TagNumber(17)
  set duration($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasDuration() => $_has(16);
  @$pb.TagNumber(17)
  void clearDuration() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get exString => $_getSZ(17);
  @$pb.TagNumber(18)
  set exString($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasExString() => $_has(17);
  @$pb.TagNumber(18)
  void clearExString() => $_clearField(18);

  @$pb.TagNumber(19)
  ImgtagVer get imgtagVer => $_getN(18);
  @$pb.TagNumber(19)
  set imgtagVer(ImgtagVer value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasImgtagVer() => $_has(18);
  @$pb.TagNumber(19)
  void clearImgtagVer() => $_clearField(19);
  @$pb.TagNumber(19)
  ImgtagVer ensureImgtagVer() => $_ensure(18);

  @$pb.TagNumber(20)
  $core.int get vidNum => $_getIZ(19);
  @$pb.TagNumber(20)
  set vidNum($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasVidNum() => $_has(19);
  @$pb.TagNumber(20)
  void clearVidNum() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get updateNum => $_getIZ(20);
  @$pb.TagNumber(21)
  set updateNum($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasUpdateNum() => $_has(20);
  @$pb.TagNumber(21)
  void clearUpdateNum() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get exString2 => $_getSZ(21);
  @$pb.TagNumber(22)
  set exString2($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasExString2() => $_has(21);
  @$pb.TagNumber(22)
  void clearExString2() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get coverUrl1 => $_getSZ(22);
  @$pb.TagNumber(23)
  set coverUrl1($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasCoverUrl1() => $_has(22);
  @$pb.TagNumber(23)
  void clearCoverUrl1() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get periods => $_getSZ(23);
  @$pb.TagNumber(24)
  set periods($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasPeriods() => $_has(23);
  @$pb.TagNumber(24)
  void clearPeriods() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get payType => $_getSZ(24);
  @$pb.TagNumber(25)
  set payType($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasPayType() => $_has(24);
  @$pb.TagNumber(25)
  void clearPayType() => $_clearField(25);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
