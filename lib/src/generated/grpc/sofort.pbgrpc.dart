//
//  Generated code. Do not modify.
//  source: sofort.proto
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

import 'sofort.pb.dart' as $0;

export 'sofort.pb.dart';

@$pb.GrpcServiceName('DeviceService')
class DeviceServiceClient extends $grpc.Client {
  static final _$getDeviceName = $grpc.ClientMethod<$0.GetDeviceNameReq, $0.GetDeviceNameResp>(
      '/DeviceService/GetDeviceName',
      ($0.GetDeviceNameReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDeviceNameResp.fromBuffer(value));
  static final _$getDevicePhoto = $grpc.ClientMethod<$0.GetDevicePhotoReq, $0.GetDevicePhotoResp>(
      '/DeviceService/GetDevicePhoto',
      ($0.GetDevicePhotoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDevicePhotoResp.fromBuffer(value));
  static final _$getStream = $grpc.ClientMethod<$0.GetStreamReq, $0.GetStreamResp>(
      '/DeviceService/GetStream',
      ($0.GetStreamReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetStreamResp.fromBuffer(value));
  static final _$getStreamAddress = $grpc.ClientMethod<$0.GetStreamAddressReq, $0.GetStreamAddressResp>(
      '/DeviceService/GetStreamAddress',
      ($0.GetStreamAddressReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetStreamAddressResp.fromBuffer(value));

  DeviceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetDeviceNameResp> getDeviceName($0.GetDeviceNameReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDeviceName, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDevicePhotoResp> getDevicePhoto($0.GetDevicePhotoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDevicePhoto, request, options: options);
  }

  $grpc.ResponseStream<$0.GetStreamResp> getStream($0.GetStreamReq request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getStream, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.GetStreamAddressResp> getStreamAddress($0.GetStreamAddressReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStreamAddress, request, options: options);
  }
}

@$pb.GrpcServiceName('DeviceService')
abstract class DeviceServiceBase extends $grpc.Service {
  $core.String get $name => 'DeviceService';

  DeviceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetDeviceNameReq, $0.GetDeviceNameResp>(
        'GetDeviceName',
        getDeviceName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDeviceNameReq.fromBuffer(value),
        ($0.GetDeviceNameResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDevicePhotoReq, $0.GetDevicePhotoResp>(
        'GetDevicePhoto',
        getDevicePhoto_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDevicePhotoReq.fromBuffer(value),
        ($0.GetDevicePhotoResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStreamReq, $0.GetStreamResp>(
        'GetStream',
        getStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GetStreamReq.fromBuffer(value),
        ($0.GetStreamResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStreamAddressReq, $0.GetStreamAddressResp>(
        'GetStreamAddress',
        getStreamAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStreamAddressReq.fromBuffer(value),
        ($0.GetStreamAddressResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetDeviceNameResp> getDeviceName_Pre($grpc.ServiceCall call, $async.Future<$0.GetDeviceNameReq> request) async {
    return getDeviceName(call, await request);
  }

  $async.Future<$0.GetDevicePhotoResp> getDevicePhoto_Pre($grpc.ServiceCall call, $async.Future<$0.GetDevicePhotoReq> request) async {
    return getDevicePhoto(call, await request);
  }

  $async.Stream<$0.GetStreamResp> getStream_Pre($grpc.ServiceCall call, $async.Future<$0.GetStreamReq> request) async* {
    yield* getStream(call, await request);
  }

  $async.Future<$0.GetStreamAddressResp> getStreamAddress_Pre($grpc.ServiceCall call, $async.Future<$0.GetStreamAddressReq> request) async {
    return getStreamAddress(call, await request);
  }

  $async.Future<$0.GetDeviceNameResp> getDeviceName($grpc.ServiceCall call, $0.GetDeviceNameReq request);
  $async.Future<$0.GetDevicePhotoResp> getDevicePhoto($grpc.ServiceCall call, $0.GetDevicePhotoReq request);
  $async.Stream<$0.GetStreamResp> getStream($grpc.ServiceCall call, $0.GetStreamReq request);
  $async.Future<$0.GetStreamAddressResp> getStreamAddress($grpc.ServiceCall call, $0.GetStreamAddressReq request);
}
