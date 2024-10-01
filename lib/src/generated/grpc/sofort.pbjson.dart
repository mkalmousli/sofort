//
//  Generated code. Do not modify.
//  source: sofort.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getDeviceNameReqDescriptor instead')
const GetDeviceNameReq$json = {
  '1': 'GetDeviceNameReq',
};

/// Descriptor for `GetDeviceNameReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceNameReqDescriptor = $convert.base64Decode(
    'ChBHZXREZXZpY2VOYW1lUmVx');

@$core.Deprecated('Use getDeviceNameRespDescriptor instead')
const GetDeviceNameResp$json = {
  '1': 'GetDeviceNameResp',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetDeviceNameResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceNameRespDescriptor = $convert.base64Decode(
    'ChFHZXREZXZpY2VOYW1lUmVzcBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use getDevicePhotoReqDescriptor instead')
const GetDevicePhotoReq$json = {
  '1': 'GetDevicePhotoReq',
};

/// Descriptor for `GetDevicePhotoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDevicePhotoReqDescriptor = $convert.base64Decode(
    'ChFHZXREZXZpY2VQaG90b1JlcQ==');

@$core.Deprecated('Use getDevicePhotoRespDescriptor instead')
const GetDevicePhotoResp$json = {
  '1': 'GetDevicePhotoResp',
  '2': [
    {'1': 'photo', '3': 1, '4': 1, '5': 12, '10': 'photo'},
  ],
};

/// Descriptor for `GetDevicePhotoResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDevicePhotoRespDescriptor = $convert.base64Decode(
    'ChJHZXREZXZpY2VQaG90b1Jlc3ASFAoFcGhvdG8YASABKAxSBXBob3Rv');

@$core.Deprecated('Use getStreamReqDescriptor instead')
const GetStreamReq$json = {
  '1': 'GetStreamReq',
  '2': [
    {'1': 'startDateTime', '3': 1, '4': 1, '5': 5, '10': 'startDateTime'},
  ],
};

/// Descriptor for `GetStreamReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStreamReqDescriptor = $convert.base64Decode(
    'CgxHZXRTdHJlYW1SZXESJAoNc3RhcnREYXRlVGltZRgBIAEoBVINc3RhcnREYXRlVGltZQ==');

@$core.Deprecated('Use getStreamRespDescriptor instead')
const GetStreamResp$json = {
  '1': 'GetStreamResp',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetStreamResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStreamRespDescriptor = $convert.base64Decode(
    'Cg1HZXRTdHJlYW1SZXNwEg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use getStreamAddressReqDescriptor instead')
const GetStreamAddressReq$json = {
  '1': 'GetStreamAddressReq',
};

/// Descriptor for `GetStreamAddressReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStreamAddressReqDescriptor = $convert.base64Decode(
    'ChNHZXRTdHJlYW1BZGRyZXNzUmVx');

@$core.Deprecated('Use getStreamAddressRespDescriptor instead')
const GetStreamAddressResp$json = {
  '1': 'GetStreamAddressResp',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `GetStreamAddressResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStreamAddressRespDescriptor = $convert.base64Decode(
    'ChRHZXRTdHJlYW1BZGRyZXNzUmVzcBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNz');

@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = {
  '1': 'Device',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'macAddress', '3': 2, '4': 1, '5': 9, '10': 'macAddress'},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode(
    'CgZEZXZpY2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxIeCgptYWNBZGRyZXNzGAIgASgJUg'
    'ptYWNBZGRyZXNzEhoKCHBhc3N3b3JkGAMgASgJUghwYXNzd29yZA==');

