// This is a generated file - do not edit.
//
// Generated from yang_shi.channel.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use imgtagDescriptor instead')
const Imgtag$json = {
  '1': 'Imgtag',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `Imgtag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imgtagDescriptor = $convert.base64Decode(
    'CgZJbWd0YWcSDgoCaWQYASABKAlSAmlkEhIKBHRleHQYAiABKAlSBHRleHQ=');

@$core.Deprecated('Use imgtagVerDescriptor instead')
const ImgtagVer$json = {
  '1': 'ImgtagVer',
  '2': [
    {
      '1': 'tag_1',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.channel.Imgtag',
      '10': 'tag1'
    },
    {
      '1': 'tag_2',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.channel.Imgtag',
      '10': 'tag2'
    },
    {
      '1': 'tag_3',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.channel.Imgtag',
      '10': 'tag3'
    },
    {
      '1': 'tag_4',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.channel.Imgtag',
      '10': 'tag4'
    },
  ],
};

/// Descriptor for `ImgtagVer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imgtagVerDescriptor = $convert.base64Decode(
    'CglJbWd0YWdWZXISJAoFdGFnXzEYASADKAsyDy5jaGFubmVsLkltZ3RhZ1IEdGFnMRIkCgV0YW'
    'dfMhgCIAMoCzIPLmNoYW5uZWwuSW1ndGFnUgR0YWcyEiQKBXRhZ18zGAMgAygLMg8uY2hhbm5l'
    'bC5JbWd0YWdSBHRhZzMSJAoFdGFnXzQYBCADKAsyDy5jaGFubmVsLkltZ3RhZ1IEdGFnNA==');

@$core.Deprecated('Use tvChannelListDataDescriptor instead')
const TvChannelListData$json = {
  '1': 'TvChannelListData',
  '2': [
    {'1': 'dataType', '3': 1, '4': 1, '5': 9, '10': 'dataType'},
    {'1': 'channelName', '3': 2, '4': 1, '5': 9, '10': 'channelName'},
    {'1': 'channelCode', '3': 3, '4': 1, '5': 9, '10': 'channelCode'},
    {'1': 'pid', '3': 4, '4': 1, '5': 9, '10': 'pid'},
    {'1': 'tvLogo', '3': 5, '4': 1, '5': 9, '10': 'tvLogo'},
    {'1': 'streamId', '3': 6, '4': 1, '5': 9, '10': 'streamId'},
    {'1': 'isVip', '3': 7, '4': 1, '5': 8, '10': 'isVip'},
    {'1': 'is4K', '3': 8, '4': 1, '5': 8, '10': 'is4K'},
    {
      '1': 'timeShiftReviewFlag',
      '3': 9,
      '4': 1,
      '5': 9,
      '10': 'timeShiftReviewFlag'
    },
    {'1': 'programDates', '3': 10, '4': 3, '5': 9, '10': 'programDates'},
    {'1': 'channelType', '3': 11, '4': 1, '5': 9, '10': 'channelType'},
    {'1': 'selectTvLogo', '3': 12, '4': 1, '5': 9, '10': 'selectTvLogo'},
    {'1': 'coverUrl', '3': 13, '4': 1, '5': 9, '10': 'coverUrl'},
    {'1': 'isLimitedFree', '3': 14, '4': 1, '5': 8, '10': 'isLimitedFree'},
    {'1': 'viewRights', '3': 15, '4': 3, '5': 13, '10': 'viewRights'},
    {
      '1': 'imgtagVer',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.channel.ImgtagVer',
      '10': 'imgtagVer'
    },
    {'1': 'isScreenFlag', '3': 17, '4': 1, '5': 8, '10': 'isScreenFlag'},
    {'1': 'payType', '3': 18, '4': 1, '5': 9, '10': 'payType'},
  ],
};

/// Descriptor for `TvChannelListData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvChannelListDataDescriptor = $convert.base64Decode(
    'ChFUdkNoYW5uZWxMaXN0RGF0YRIaCghkYXRhVHlwZRgBIAEoCVIIZGF0YVR5cGUSIAoLY2hhbm'
    '5lbE5hbWUYAiABKAlSC2NoYW5uZWxOYW1lEiAKC2NoYW5uZWxDb2RlGAMgASgJUgtjaGFubmVs'
    'Q29kZRIQCgNwaWQYBCABKAlSA3BpZBIWCgZ0dkxvZ28YBSABKAlSBnR2TG9nbxIaCghzdHJlYW'
    '1JZBgGIAEoCVIIc3RyZWFtSWQSFAoFaXNWaXAYByABKAhSBWlzVmlwEhIKBGlzNEsYCCABKAhS'
    'BGlzNEsSMAoTdGltZVNoaWZ0UmV2aWV3RmxhZxgJIAEoCVITdGltZVNoaWZ0UmV2aWV3RmxhZx'
    'IiCgxwcm9ncmFtRGF0ZXMYCiADKAlSDHByb2dyYW1EYXRlcxIgCgtjaGFubmVsVHlwZRgLIAEo'
    'CVILY2hhbm5lbFR5cGUSIgoMc2VsZWN0VHZMb2dvGAwgASgJUgxzZWxlY3RUdkxvZ28SGgoIY2'
    '92ZXJVcmwYDSABKAlSCGNvdmVyVXJsEiQKDWlzTGltaXRlZEZyZWUYDiABKAhSDWlzTGltaXRl'
    'ZEZyZWUSHgoKdmlld1JpZ2h0cxgPIAMoDVIKdmlld1JpZ2h0cxIwCglpbWd0YWdWZXIYECABKA'
    'syEi5jaGFubmVsLkltZ3RhZ1ZlclIJaW1ndGFnVmVyEiIKDGlzU2NyZWVuRmxhZxgRIAEoCFIM'
    'aXNTY3JlZW5GbGFnEhgKB3BheVR5cGUYEiABKAlSB3BheVR5cGU=');

@$core.Deprecated('Use actionDescriptor instead')
const Action$json = {
  '1': 'Action',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'actionType', '3': 2, '4': 1, '5': 9, '10': 'actionType'},
    {'1': 'targetTitle', '3': 3, '4': 1, '5': 9, '10': 'targetTitle'},
    {'1': 'secondId', '3': 4, '4': 1, '5': 9, '10': 'secondId'},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode(
    'CgZBY3Rpb24SDgoCaWQYASABKAlSAmlkEh4KCmFjdGlvblR5cGUYAiABKAlSCmFjdGlvblR5cG'
    'USIAoLdGFyZ2V0VGl0bGUYAyABKAlSC3RhcmdldFRpdGxlEhoKCHNlY29uZElkGAQgASgJUghz'
    'ZWNvbmRJZA==');

@$core.Deprecated('Use recommendApiDataDescriptor instead')
const RecommendApiData$json = {
  '1': 'RecommendApiData',
  '2': [
    {'1': 'dataType', '3': 1, '4': 1, '5': 9, '10': 'dataType'},
    {'1': 'sceneId', '3': 2, '4': 1, '5': 9, '10': 'sceneId'},
    {'1': 'categoryIds', '3': 3, '4': 1, '5': 9, '10': 'categoryIds'},
    {'1': 'recommendNum', '3': 4, '4': 1, '5': 5, '10': 'recommendNum'},
    {'1': 'path', '3': 5, '4': 1, '5': 9, '10': 'path'},
    {'1': 'isFilter', '3': 6, '4': 1, '5': 9, '10': 'isFilter'},
    {
      '1': 'manualDataList',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.channel.RecommendApiManualData',
      '10': 'manualDataList'
    },
    {'1': 'apiAction', '3': 8, '4': 1, '5': 9, '10': 'apiAction'},
  ],
};

/// Descriptor for `RecommendApiData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recommendApiDataDescriptor = $convert.base64Decode(
    'ChBSZWNvbW1lbmRBcGlEYXRhEhoKCGRhdGFUeXBlGAEgASgJUghkYXRhVHlwZRIYCgdzY2VuZU'
    'lkGAIgASgJUgdzY2VuZUlkEiAKC2NhdGVnb3J5SWRzGAMgASgJUgtjYXRlZ29yeUlkcxIiCgxy'
    'ZWNvbW1lbmROdW0YBCABKAVSDHJlY29tbWVuZE51bRISCgRwYXRoGAUgASgJUgRwYXRoEhoKCG'
    'lzRmlsdGVyGAYgASgJUghpc0ZpbHRlchJHCg5tYW51YWxEYXRhTGlzdBgHIAMoCzIfLmNoYW5u'
    'ZWwuUmVjb21tZW5kQXBpTWFudWFsRGF0YVIObWFudWFsRGF0YUxpc3QSHAoJYXBpQWN0aW9uGA'
    'ggASgJUglhcGlBY3Rpb24=');

@$core.Deprecated('Use recommendApiManualDataDescriptor instead')
const RecommendApiManualData$json = {
  '1': 'RecommendApiManualData',
  '2': [
    {
      '1': 'action',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.channel.Action',
      '10': 'action'
    },
    {'1': 'dataType', '3': 2, '4': 1, '5': 9, '10': 'dataType'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'subTitle', '3': 4, '4': 1, '5': 9, '10': 'subTitle'},
    {'1': 'coverUrl', '3': 5, '4': 1, '5': 9, '10': 'coverUrl'},
    {'1': 'cpId', '3': 6, '4': 1, '5': 9, '10': 'cpId'},
    {'1': 'cpName', '3': 7, '4': 1, '5': 9, '10': 'cpName'},
    {'1': 'cpAvatar', '3': 8, '4': 1, '5': 9, '10': 'cpAvatar'},
    {'1': 'vid', '3': 9, '4': 1, '5': 9, '10': 'vid'},
    {'1': 'cid', '3': 10, '4': 1, '5': 9, '10': 'cid'},
    {'1': 'isVip', '3': 11, '4': 1, '5': 8, '10': 'isVip'},
    {'1': 'duration', '3': 12, '4': 1, '5': 13, '10': 'duration'},
    {'1': 'position', '3': 13, '4': 1, '5': 13, '10': 'position'},
    {
      '1': 'imgtagVer',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.channel.ImgtagVer',
      '10': 'imgtagVer'
    },
    {'1': 'vidNum', '3': 15, '4': 1, '5': 13, '10': 'vidNum'},
    {'1': 'updateNum', '3': 16, '4': 1, '5': 13, '10': 'updateNum'},
    {'1': 'payType', '3': 17, '4': 1, '5': 9, '10': 'payType'},
  ],
};

/// Descriptor for `RecommendApiManualData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recommendApiManualDataDescriptor = $convert.base64Decode(
    'ChZSZWNvbW1lbmRBcGlNYW51YWxEYXRhEicKBmFjdGlvbhgBIAEoCzIPLmNoYW5uZWwuQWN0aW'
    '9uUgZhY3Rpb24SGgoIZGF0YVR5cGUYAiABKAlSCGRhdGFUeXBlEhQKBXRpdGxlGAMgASgJUgV0'
    'aXRsZRIaCghzdWJUaXRsZRgEIAEoCVIIc3ViVGl0bGUSGgoIY292ZXJVcmwYBSABKAlSCGNvdm'
    'VyVXJsEhIKBGNwSWQYBiABKAlSBGNwSWQSFgoGY3BOYW1lGAcgASgJUgZjcE5hbWUSGgoIY3BB'
    'dmF0YXIYCCABKAlSCGNwQXZhdGFyEhAKA3ZpZBgJIAEoCVIDdmlkEhAKA2NpZBgKIAEoCVIDY2'
    'lkEhQKBWlzVmlwGAsgASgIUgVpc1ZpcBIaCghkdXJhdGlvbhgMIAEoDVIIZHVyYXRpb24SGgoI'
    'cG9zaXRpb24YDSABKA1SCHBvc2l0aW9uEjAKCWltZ3RhZ1ZlchgOIAEoCzISLmNoYW5uZWwuSW'
    '1ndGFnVmVyUglpbWd0YWdWZXISFgoGdmlkTnVtGA8gASgNUgZ2aWROdW0SHAoJdXBkYXRlTnVt'
    'GBAgASgNUgl1cGRhdGVOdW0SGAoHcGF5VHlwZRgRIAEoCVIHcGF5VHlwZQ==');

@$core.Deprecated('Use vipModuleDataDescriptor instead')
const VipModuleData$json = {
  '1': 'VipModuleData',
  '2': [
    {'1': 'dataType', '3': 1, '4': 1, '5': 9, '10': 'dataType'},
    {'1': 'displayText', '3': 2, '4': 1, '5': 9, '10': 'displayText'},
  ],
};

/// Descriptor for `VipModuleData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vipModuleDataDescriptor = $convert.base64Decode(
    'Cg1WaXBNb2R1bGVEYXRhEhoKCGRhdGFUeXBlGAEgASgJUghkYXRhVHlwZRIgCgtkaXNwbGF5VG'
    'V4dBgCIAEoCVILZGlzcGxheVRleHQ=');

@$core.Deprecated('Use activityDataDescriptor instead')
const ActivityData$json = {
  '1': 'ActivityData',
  '2': [
    {'1': 'picture', '3': 1, '4': 1, '5': 9, '10': 'picture'},
  ],
};

/// Descriptor for `ActivityData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityDataDescriptor = $convert
    .base64Decode('CgxBY3Rpdml0eURhdGESGAoHcGljdHVyZRgBIAEoCVIHcGljdHVyZQ==');

@$core.Deprecated('Use responseDescriptor instead')
const Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.channel.Data', '10': 'data'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRISCgRjb2RlGAEgASgNUgRjb2RlEiEKBGRhdGEYAiABKAsyDS5jaGFubmVsLk'
    'RhdGFSBGRhdGESGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use dataDescriptor instead')
const Data$json = {
  '1': 'Data',
  '2': [
    {'1': 'feedId', '3': 1, '4': 1, '5': 9, '10': 'feedId'},
    {
      '1': 'feedModuleList',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.channel.Module',
      '10': 'feedModuleList'
    },
  ],
};

/// Descriptor for `Data`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataDescriptor = $convert.base64Decode(
    'CgREYXRhEhYKBmZlZWRJZBgBIAEoCVIGZmVlZElkEjcKDmZlZWRNb2R1bGVMaXN0GAIgAygLMg'
    '8uY2hhbm5lbC5Nb2R1bGVSDmZlZWRNb2R1bGVMaXN0');

@$core.Deprecated('Use moduleDescriptor instead')
const Module$json = {
  '1': 'Module',
  '2': [
    {'1': 'moduleId', '3': 1, '4': 1, '5': 9, '10': 'moduleId'},
    {'1': 'moduleType', '3': 2, '4': 1, '5': 9, '10': 'moduleType'},
    {
      '1': 'dataList',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.channel.ModuleData',
      '10': 'dataList'
    },
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'bgColor', '3': 5, '4': 1, '5': 9, '10': 'bgColor'},
    {'1': 'bg', '3': 6, '4': 1, '5': 9, '10': 'bg'},
    {'1': 'row', '3': 7, '4': 1, '5': 5, '10': 'row'},
    {'1': 'rowNum', '3': 8, '4': 1, '5': 5, '10': 'rowNum'},
    {'1': 'showMore', '3': 9, '4': 1, '5': 8, '10': 'showMore'},
    {'1': 'showMoreUrl', '3': 10, '4': 1, '5': 9, '10': 'showMoreUrl'},
    {'1': 'showChange', '3': 11, '4': 1, '5': 8, '10': 'showChange'},
    {'1': 'showPagination', '3': 12, '4': 1, '5': 8, '10': 'showPagination'},
    {'1': 'dataSource', '3': 13, '4': 1, '5': 9, '10': 'dataSource'},
    {
      '1': 'dataRecommendApi',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.channel.RecommendApiData',
      '10': 'dataRecommendApi'
    },
    {
      '1': 'dataTvChannelList',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.channel.TvChannelListData',
      '10': 'dataTvChannelList'
    },
    {'1': 'exString', '3': 16, '4': 1, '5': 9, '10': 'exString'},
    {'1': 'titlePic', '3': 17, '4': 1, '5': 9, '10': 'titlePic'},
    {
      '1': 'dataVipModule',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.channel.VipModuleData',
      '10': 'dataVipModule'
    },
    {'1': 'exString2', '3': 19, '4': 1, '5': 9, '10': 'exString2'},
    {'1': 'titleIcon', '3': 20, '4': 1, '5': 9, '10': 'titleIcon'},
    {'1': 'styleType', '3': 21, '4': 1, '5': 9, '10': 'styleType'},
    {
      '1': 'dataActivity',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.channel.ActivityData',
      '10': 'dataActivity'
    },
  ],
};

/// Descriptor for `Module`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDescriptor = $convert.base64Decode(
    'CgZNb2R1bGUSGgoIbW9kdWxlSWQYASABKAlSCG1vZHVsZUlkEh4KCm1vZHVsZVR5cGUYAiABKA'
    'lSCm1vZHVsZVR5cGUSLwoIZGF0YUxpc3QYAyADKAsyEy5jaGFubmVsLk1vZHVsZURhdGFSCGRh'
    'dGFMaXN0EhQKBXRpdGxlGAQgASgJUgV0aXRsZRIYCgdiZ0NvbG9yGAUgASgJUgdiZ0NvbG9yEg'
    '4KAmJnGAYgASgJUgJiZxIQCgNyb3cYByABKAVSA3JvdxIWCgZyb3dOdW0YCCABKAVSBnJvd051'
    'bRIaCghzaG93TW9yZRgJIAEoCFIIc2hvd01vcmUSIAoLc2hvd01vcmVVcmwYCiABKAlSC3Nob3'
    'dNb3JlVXJsEh4KCnNob3dDaGFuZ2UYCyABKAhSCnNob3dDaGFuZ2USJgoOc2hvd1BhZ2luYXRp'
    'b24YDCABKAhSDnNob3dQYWdpbmF0aW9uEh4KCmRhdGFTb3VyY2UYDSABKAlSCmRhdGFTb3VyY2'
    'USRQoQZGF0YVJlY29tbWVuZEFwaRgOIAEoCzIZLmNoYW5uZWwuUmVjb21tZW5kQXBpRGF0YVIQ'
    'ZGF0YVJlY29tbWVuZEFwaRJIChFkYXRhVHZDaGFubmVsTGlzdBgPIAMoCzIaLmNoYW5uZWwuVH'
    'ZDaGFubmVsTGlzdERhdGFSEWRhdGFUdkNoYW5uZWxMaXN0EhoKCGV4U3RyaW5nGBAgASgJUghl'
    'eFN0cmluZxIaCgh0aXRsZVBpYxgRIAEoCVIIdGl0bGVQaWMSPAoNZGF0YVZpcE1vZHVsZRgSIA'
    'EoCzIWLmNoYW5uZWwuVmlwTW9kdWxlRGF0YVINZGF0YVZpcE1vZHVsZRIcCglleFN0cmluZzIY'
    'EyABKAlSCWV4U3RyaW5nMhIcCgl0aXRsZUljb24YFCABKAlSCXRpdGxlSWNvbhIcCglzdHlsZV'
    'R5cGUYFSABKAlSCXN0eWxlVHlwZRI5CgxkYXRhQWN0aXZpdHkYFiABKAsyFS5jaGFubmVsLkFj'
    'dGl2aXR5RGF0YVIMZGF0YUFjdGl2aXR5');

@$core.Deprecated('Use moduleDataDescriptor instead')
const ModuleData$json = {
  '1': 'ModuleData',
  '2': [
    {
      '1': 'action',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.channel.Action',
      '10': 'action'
    },
    {'1': 'dataType', '3': 2, '4': 1, '5': 9, '10': 'dataType'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'subTitle', '3': 4, '4': 1, '5': 9, '10': 'subTitle'},
    {'1': 'coverUrl', '3': 5, '4': 1, '5': 9, '10': 'coverUrl'},
    {'1': 'topBarColor', '3': 6, '4': 1, '5': 9, '10': 'topBarColor'},
    {'1': 'cpId', '3': 7, '4': 1, '5': 9, '10': 'cpId'},
    {'1': 'cpName', '3': 8, '4': 1, '5': 9, '10': 'cpName'},
    {'1': 'cpAvatar', '3': 9, '4': 1, '5': 9, '10': 'cpAvatar'},
    {'1': 'isVip', '3': 10, '4': 1, '5': 8, '10': 'isVip'},
    {'1': 'playVid', '3': 11, '4': 1, '5': 9, '10': 'playVid'},
    {'1': 'vid', '3': 12, '4': 1, '5': 9, '10': 'vid'},
    {'1': 'cid', '3': 13, '4': 1, '5': 9, '10': 'cid'},
    {'1': 'pid', '3': 14, '4': 1, '5': 9, '10': 'pid'},
    {'1': 'lid', '3': 15, '4': 1, '5': 9, '10': 'lid'},
    {'1': 'linkUrl', '3': 16, '4': 1, '5': 9, '10': 'linkUrl'},
    {'1': 'duration', '3': 17, '4': 1, '5': 13, '10': 'duration'},
    {'1': 'exString', '3': 18, '4': 1, '5': 9, '10': 'exString'},
    {
      '1': 'imgtagVer',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.channel.ImgtagVer',
      '10': 'imgtagVer'
    },
    {'1': 'vidNum', '3': 20, '4': 1, '5': 13, '10': 'vidNum'},
    {'1': 'updateNum', '3': 21, '4': 1, '5': 13, '10': 'updateNum'},
    {'1': 'exString2', '3': 22, '4': 1, '5': 9, '10': 'exString2'},
    {'1': 'coverUrl1', '3': 23, '4': 1, '5': 9, '10': 'coverUrl1'},
    {'1': 'periods', '3': 24, '4': 1, '5': 9, '10': 'periods'},
    {'1': 'payType', '3': 25, '4': 1, '5': 9, '10': 'payType'},
  ],
};

/// Descriptor for `ModuleData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDataDescriptor = $convert.base64Decode(
    'CgpNb2R1bGVEYXRhEicKBmFjdGlvbhgBIAEoCzIPLmNoYW5uZWwuQWN0aW9uUgZhY3Rpb24SGg'
    'oIZGF0YVR5cGUYAiABKAlSCGRhdGFUeXBlEhQKBXRpdGxlGAMgASgJUgV0aXRsZRIaCghzdWJU'
    'aXRsZRgEIAEoCVIIc3ViVGl0bGUSGgoIY292ZXJVcmwYBSABKAlSCGNvdmVyVXJsEiAKC3RvcE'
    'JhckNvbG9yGAYgASgJUgt0b3BCYXJDb2xvchISCgRjcElkGAcgASgJUgRjcElkEhYKBmNwTmFt'
    'ZRgIIAEoCVIGY3BOYW1lEhoKCGNwQXZhdGFyGAkgASgJUghjcEF2YXRhchIUCgVpc1ZpcBgKIA'
    'EoCFIFaXNWaXASGAoHcGxheVZpZBgLIAEoCVIHcGxheVZpZBIQCgN2aWQYDCABKAlSA3ZpZBIQ'
    'CgNjaWQYDSABKAlSA2NpZBIQCgNwaWQYDiABKAlSA3BpZBIQCgNsaWQYDyABKAlSA2xpZBIYCg'
    'dsaW5rVXJsGBAgASgJUgdsaW5rVXJsEhoKCGR1cmF0aW9uGBEgASgNUghkdXJhdGlvbhIaCghl'
    'eFN0cmluZxgSIAEoCVIIZXhTdHJpbmcSMAoJaW1ndGFnVmVyGBMgASgLMhIuY2hhbm5lbC5JbW'
    'd0YWdWZXJSCWltZ3RhZ1ZlchIWCgZ2aWROdW0YFCABKA1SBnZpZE51bRIcCgl1cGRhdGVOdW0Y'
    'FSABKA1SCXVwZGF0ZU51bRIcCglleFN0cmluZzIYFiABKAlSCWV4U3RyaW5nMhIcCgljb3Zlcl'
    'VybDEYFyABKAlSCWNvdmVyVXJsMRIYCgdwZXJpb2RzGBggASgJUgdwZXJpb2RzEhgKB3BheVR5'
    'cGUYGSABKAlSB3BheVR5cGU=');
