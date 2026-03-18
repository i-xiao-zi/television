// This is a generated file - do not edit.
//
// Generated from yang_shi.navigation.proto.

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

@$core.Deprecated('Use responseDescriptor instead')
const Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 13, '10': 'code'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.navigation.Data',
      '10': 'data'
    },
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRISCgRjb2RlGAEgASgNUgRjb2RlEiQKBGRhdGEYAiABKAsyEC5uYXZpZ2F0aW'
    '9uLkRhdGFSBGRhdGESGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use dataDescriptor instead')
const Data$json = {
  '1': 'Data',
  '2': [
    {'1': 'defaultChannelId', '3': 1, '4': 1, '5': 9, '10': 'defaultChannelId'},
    {
      '1': 'tabList',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.navigation.Channel',
      '10': 'tabList'
    },
    {'1': 'displayNum', '3': 3, '4': 1, '5': 13, '10': 'displayNum'},
  ],
};

/// Descriptor for `Data`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataDescriptor = $convert.base64Decode(
    'CgREYXRhEioKEGRlZmF1bHRDaGFubmVsSWQYASABKAlSEGRlZmF1bHRDaGFubmVsSWQSLQoHdG'
    'FiTGlzdBgCIAMoCzITLm5hdmlnYXRpb24uQ2hhbm5lbFIHdGFiTGlzdBIeCgpkaXNwbGF5TnVt'
    'GAMgASgNUgpkaXNwbGF5TnVt');

@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = {
  '1': 'Channel',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'channelId', '3': 2, '4': 1, '5': 9, '10': 'channelId'},
    {'1': 'channelType', '3': 3, '4': 1, '5': 9, '10': 'channelType'},
    {'1': 'feedId', '3': 4, '4': 1, '5': 9, '10': 'feedId'},
    {'1': 'h5Url', '3': 5, '4': 1, '5': 9, '10': 'h5Url'},
    {'1': 'topBarColor', '3': 6, '4': 1, '5': 9, '10': 'topBarColor'},
    {'1': 'selectColor', '3': 7, '4': 1, '5': 9, '10': 'selectColor'},
    {'1': 'childNavKey', '3': 8, '4': 1, '5': 9, '10': 'childNavKey'},
    {'1': 'customChannelKey', '3': 9, '4': 1, '5': 9, '10': 'customChannelKey'},
    {'1': 'channelTag', '3': 10, '4': 1, '5': 13, '10': 'channelTag'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode(
    'CgdDaGFubmVsEhIKBG5hbWUYASABKAlSBG5hbWUSHAoJY2hhbm5lbElkGAIgASgJUgljaGFubm'
    'VsSWQSIAoLY2hhbm5lbFR5cGUYAyABKAlSC2NoYW5uZWxUeXBlEhYKBmZlZWRJZBgEIAEoCVIG'
    'ZmVlZElkEhQKBWg1VXJsGAUgASgJUgVoNVVybBIgCgt0b3BCYXJDb2xvchgGIAEoCVILdG9wQm'
    'FyQ29sb3ISIAoLc2VsZWN0Q29sb3IYByABKAlSC3NlbGVjdENvbG9yEiAKC2NoaWxkTmF2S2V5'
    'GAggASgJUgtjaGlsZE5hdktleRIqChBjdXN0b21DaGFubmVsS2V5GAkgASgJUhBjdXN0b21DaG'
    'FubmVsS2V5Eh4KCmNoYW5uZWxUYWcYCiABKA1SCmNoYW5uZWxUYWc=');
