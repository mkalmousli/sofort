//
//  Generated code. Do not modify.
//  source: sofort.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetDeviceNameReq extends $pb.GeneratedMessage {
  factory GetDeviceNameReq() => create();
  GetDeviceNameReq._() : super();
  factory GetDeviceNameReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceNameReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceNameReq', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceNameReq clone() => GetDeviceNameReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceNameReq copyWith(void Function(GetDeviceNameReq) updates) => super.copyWith((message) => updates(message as GetDeviceNameReq)) as GetDeviceNameReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceNameReq create() => GetDeviceNameReq._();
  GetDeviceNameReq createEmptyInstance() => create();
  static $pb.PbList<GetDeviceNameReq> createRepeated() => $pb.PbList<GetDeviceNameReq>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceNameReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceNameReq>(create);
  static GetDeviceNameReq? _defaultInstance;
}

class GetDeviceNameResp extends $pb.GeneratedMessage {
  factory GetDeviceNameResp({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetDeviceNameResp._() : super();
  factory GetDeviceNameResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceNameResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceNameResp', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceNameResp clone() => GetDeviceNameResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceNameResp copyWith(void Function(GetDeviceNameResp) updates) => super.copyWith((message) => updates(message as GetDeviceNameResp)) as GetDeviceNameResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceNameResp create() => GetDeviceNameResp._();
  GetDeviceNameResp createEmptyInstance() => create();
  static $pb.PbList<GetDeviceNameResp> createRepeated() => $pb.PbList<GetDeviceNameResp>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceNameResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceNameResp>(create);
  static GetDeviceNameResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetDevicePhotoReq extends $pb.GeneratedMessage {
  factory GetDevicePhotoReq() => create();
  GetDevicePhotoReq._() : super();
  factory GetDevicePhotoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDevicePhotoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDevicePhotoReq', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDevicePhotoReq clone() => GetDevicePhotoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDevicePhotoReq copyWith(void Function(GetDevicePhotoReq) updates) => super.copyWith((message) => updates(message as GetDevicePhotoReq)) as GetDevicePhotoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDevicePhotoReq create() => GetDevicePhotoReq._();
  GetDevicePhotoReq createEmptyInstance() => create();
  static $pb.PbList<GetDevicePhotoReq> createRepeated() => $pb.PbList<GetDevicePhotoReq>();
  @$core.pragma('dart2js:noInline')
  static GetDevicePhotoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDevicePhotoReq>(create);
  static GetDevicePhotoReq? _defaultInstance;
}

class GetDevicePhotoResp extends $pb.GeneratedMessage {
  factory GetDevicePhotoResp({
    $core.List<$core.int>? photo,
  }) {
    final $result = create();
    if (photo != null) {
      $result.photo = photo;
    }
    return $result;
  }
  GetDevicePhotoResp._() : super();
  factory GetDevicePhotoResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDevicePhotoResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDevicePhotoResp', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'photo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDevicePhotoResp clone() => GetDevicePhotoResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDevicePhotoResp copyWith(void Function(GetDevicePhotoResp) updates) => super.copyWith((message) => updates(message as GetDevicePhotoResp)) as GetDevicePhotoResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDevicePhotoResp create() => GetDevicePhotoResp._();
  GetDevicePhotoResp createEmptyInstance() => create();
  static $pb.PbList<GetDevicePhotoResp> createRepeated() => $pb.PbList<GetDevicePhotoResp>();
  @$core.pragma('dart2js:noInline')
  static GetDevicePhotoResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDevicePhotoResp>(create);
  static GetDevicePhotoResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get photo => $_getN(0);
  @$pb.TagNumber(1)
  set photo($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoto() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoto() => clearField(1);
}

class GetStreamReq extends $pb.GeneratedMessage {
  factory GetStreamReq({
    $core.int? startDateTime,
  }) {
    final $result = create();
    if (startDateTime != null) {
      $result.startDateTime = startDateTime;
    }
    return $result;
  }
  GetStreamReq._() : super();
  factory GetStreamReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStreamReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStreamReq', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'startDateTime', $pb.PbFieldType.O3, protoName: 'startDateTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStreamReq clone() => GetStreamReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStreamReq copyWith(void Function(GetStreamReq) updates) => super.copyWith((message) => updates(message as GetStreamReq)) as GetStreamReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStreamReq create() => GetStreamReq._();
  GetStreamReq createEmptyInstance() => create();
  static $pb.PbList<GetStreamReq> createRepeated() => $pb.PbList<GetStreamReq>();
  @$core.pragma('dart2js:noInline')
  static GetStreamReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStreamReq>(create);
  static GetStreamReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get startDateTime => $_getIZ(0);
  @$pb.TagNumber(1)
  set startDateTime($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartDateTime() => clearField(1);
}

class GetStreamResp extends $pb.GeneratedMessage {
  factory GetStreamResp({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetStreamResp._() : super();
  factory GetStreamResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStreamResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStreamResp', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStreamResp clone() => GetStreamResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStreamResp copyWith(void Function(GetStreamResp) updates) => super.copyWith((message) => updates(message as GetStreamResp)) as GetStreamResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStreamResp create() => GetStreamResp._();
  GetStreamResp createEmptyInstance() => create();
  static $pb.PbList<GetStreamResp> createRepeated() => $pb.PbList<GetStreamResp>();
  @$core.pragma('dart2js:noInline')
  static GetStreamResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStreamResp>(create);
  static GetStreamResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetStreamAddressReq extends $pb.GeneratedMessage {
  factory GetStreamAddressReq() => create();
  GetStreamAddressReq._() : super();
  factory GetStreamAddressReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStreamAddressReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStreamAddressReq', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStreamAddressReq clone() => GetStreamAddressReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStreamAddressReq copyWith(void Function(GetStreamAddressReq) updates) => super.copyWith((message) => updates(message as GetStreamAddressReq)) as GetStreamAddressReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStreamAddressReq create() => GetStreamAddressReq._();
  GetStreamAddressReq createEmptyInstance() => create();
  static $pb.PbList<GetStreamAddressReq> createRepeated() => $pb.PbList<GetStreamAddressReq>();
  @$core.pragma('dart2js:noInline')
  static GetStreamAddressReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStreamAddressReq>(create);
  static GetStreamAddressReq? _defaultInstance;
}

class GetStreamAddressResp extends $pb.GeneratedMessage {
  factory GetStreamAddressResp({
    $core.String? address,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  GetStreamAddressResp._() : super();
  factory GetStreamAddressResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStreamAddressResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStreamAddressResp', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStreamAddressResp clone() => GetStreamAddressResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStreamAddressResp copyWith(void Function(GetStreamAddressResp) updates) => super.copyWith((message) => updates(message as GetStreamAddressResp)) as GetStreamAddressResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStreamAddressResp create() => GetStreamAddressResp._();
  GetStreamAddressResp createEmptyInstance() => create();
  static $pb.PbList<GetStreamAddressResp> createRepeated() => $pb.PbList<GetStreamAddressResp>();
  @$core.pragma('dart2js:noInline')
  static GetStreamAddressResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStreamAddressResp>(create);
  static GetStreamAddressResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class Device extends $pb.GeneratedMessage {
  factory Device({
    $core.String? address,
    $core.String? macAddress,
    $core.String? password,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (macAddress != null) {
      $result.macAddress = macAddress;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  Device._() : super();
  factory Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Device', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOS(2, _omitFieldNames ? '' : 'macAddress', protoName: 'macAddress')
    ..aOS(3, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Device clone() => Device()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Device copyWith(void Function(Device) updates) => super.copyWith((message) => updates(message as Device)) as Device;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get macAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set macAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMacAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearMacAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
