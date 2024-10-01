// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $DevicesTable extends Devices with TableInfo<$DevicesTable, Device> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DevicesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _macAddressMeta =
      const VerificationMeta('macAddress');
  @override
  late final GeneratedColumn<String> macAddress = GeneratedColumn<String>(
      'mac_address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _photoMeta = const VerificationMeta('photo');
  @override
  late final GeneratedColumn<Uint8List> photo = GeneratedColumn<Uint8List>(
      'photo', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, macAddress, photo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'devices';
  @override
  VerificationContext validateIntegrity(Insertable<Device> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('mac_address')) {
      context.handle(
          _macAddressMeta,
          macAddress.isAcceptableOrUnknown(
              data['mac_address']!, _macAddressMeta));
    } else if (isInserting) {
      context.missing(_macAddressMeta);
    }
    if (data.containsKey('photo')) {
      context.handle(
          _photoMeta, photo.isAcceptableOrUnknown(data['photo']!, _photoMeta));
    } else if (isInserting) {
      context.missing(_photoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Device map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Device(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      macAddress: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mac_address'])!,
      photo: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}photo'])!,
    );
  }

  @override
  $DevicesTable createAlias(String alias) {
    return $DevicesTable(attachedDatabase, alias);
  }
}

class Device extends DataClass implements Insertable<Device> {
  final int id;
  final String name;
  final String macAddress;
  final Uint8List photo;
  const Device(
      {required this.id,
      required this.name,
      required this.macAddress,
      required this.photo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['mac_address'] = Variable<String>(macAddress);
    map['photo'] = Variable<Uint8List>(photo);
    return map;
  }

  DevicesCompanion toCompanion(bool nullToAbsent) {
    return DevicesCompanion(
      id: Value(id),
      name: Value(name),
      macAddress: Value(macAddress),
      photo: Value(photo),
    );
  }

  factory Device.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Device(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      macAddress: serializer.fromJson<String>(json['macAddress']),
      photo: serializer.fromJson<Uint8List>(json['photo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'macAddress': serializer.toJson<String>(macAddress),
      'photo': serializer.toJson<Uint8List>(photo),
    };
  }

  Device copyWith(
          {int? id, String? name, String? macAddress, Uint8List? photo}) =>
      Device(
        id: id ?? this.id,
        name: name ?? this.name,
        macAddress: macAddress ?? this.macAddress,
        photo: photo ?? this.photo,
      );
  Device copyWithCompanion(DevicesCompanion data) {
    return Device(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      macAddress:
          data.macAddress.present ? data.macAddress.value : this.macAddress,
      photo: data.photo.present ? data.photo.value : this.photo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Device(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('macAddress: $macAddress, ')
          ..write('photo: $photo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, macAddress, $driftBlobEquality.hash(photo));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Device &&
          other.id == this.id &&
          other.name == this.name &&
          other.macAddress == this.macAddress &&
          $driftBlobEquality.equals(other.photo, this.photo));
}

class DevicesCompanion extends UpdateCompanion<Device> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> macAddress;
  final Value<Uint8List> photo;
  const DevicesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.macAddress = const Value.absent(),
    this.photo = const Value.absent(),
  });
  DevicesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String macAddress,
    required Uint8List photo,
  })  : name = Value(name),
        macAddress = Value(macAddress),
        photo = Value(photo);
  static Insertable<Device> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? macAddress,
    Expression<Uint8List>? photo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (macAddress != null) 'mac_address': macAddress,
      if (photo != null) 'photo': photo,
    });
  }

  DevicesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? macAddress,
      Value<Uint8List>? photo}) {
    return DevicesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      macAddress: macAddress ?? this.macAddress,
      photo: photo ?? this.photo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (macAddress.present) {
      map['mac_address'] = Variable<String>(macAddress.value);
    }
    if (photo.present) {
      map['photo'] = Variable<Uint8List>(photo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DevicesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('macAddress: $macAddress, ')
          ..write('photo: $photo')
          ..write(')'))
        .toString();
  }
}

class $AddressesTable extends Addresses
    with TableInfo<$AddressesTable, AddressesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<int> deviceId = GeneratedColumn<int>(
      'device_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES devices (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, address, deviceId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'addresses';
  @override
  VerificationContext validateIntegrity(Insertable<AddressesData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AddressesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}device_id'])!,
    );
  }

  @override
  $AddressesTable createAlias(String alias) {
    return $AddressesTable(attachedDatabase, alias);
  }
}

class AddressesData extends DataClass implements Insertable<AddressesData> {
  final int id;
  final String address;
  final int deviceId;
  const AddressesData(
      {required this.id, required this.address, required this.deviceId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['address'] = Variable<String>(address);
    map['device_id'] = Variable<int>(deviceId);
    return map;
  }

  AddressesCompanion toCompanion(bool nullToAbsent) {
    return AddressesCompanion(
      id: Value(id),
      address: Value(address),
      deviceId: Value(deviceId),
    );
  }

  factory AddressesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressesData(
      id: serializer.fromJson<int>(json['id']),
      address: serializer.fromJson<String>(json['address']),
      deviceId: serializer.fromJson<int>(json['deviceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'address': serializer.toJson<String>(address),
      'deviceId': serializer.toJson<int>(deviceId),
    };
  }

  AddressesData copyWith({int? id, String? address, int? deviceId}) =>
      AddressesData(
        id: id ?? this.id,
        address: address ?? this.address,
        deviceId: deviceId ?? this.deviceId,
      );
  AddressesData copyWithCompanion(AddressesCompanion data) {
    return AddressesData(
      id: data.id.present ? data.id.value : this.id,
      address: data.address.present ? data.address.value : this.address,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AddressesData(')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, address, deviceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressesData &&
          other.id == this.id &&
          other.address == this.address &&
          other.deviceId == this.deviceId);
}

class AddressesCompanion extends UpdateCompanion<AddressesData> {
  final Value<int> id;
  final Value<String> address;
  final Value<int> deviceId;
  const AddressesCompanion({
    this.id = const Value.absent(),
    this.address = const Value.absent(),
    this.deviceId = const Value.absent(),
  });
  AddressesCompanion.insert({
    this.id = const Value.absent(),
    required String address,
    required int deviceId,
  })  : address = Value(address),
        deviceId = Value(deviceId);
  static Insertable<AddressesData> custom({
    Expression<int>? id,
    Expression<String>? address,
    Expression<int>? deviceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (address != null) 'address': address,
      if (deviceId != null) 'device_id': deviceId,
    });
  }

  AddressesCompanion copyWith(
      {Value<int>? id, Value<String>? address, Value<int>? deviceId}) {
    return AddressesCompanion(
      id: id ?? this.id,
      address: address ?? this.address,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<int>(deviceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressesCompanion(')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }
}

class $PhotosTable extends Photos with TableInfo<$PhotosTable, Photo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PhotosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
      'path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<int> deviceId = GeneratedColumn<int>(
      'device_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES devices (id)'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, path, deviceId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'photos';
  @override
  VerificationContext validateIntegrity(Insertable<Photo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Photo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Photo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      path: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}path'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}device_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $PhotosTable createAlias(String alias) {
    return $PhotosTable(attachedDatabase, alias);
  }
}

class Photo extends DataClass implements Insertable<Photo> {
  final int id;
  final String path;
  final int deviceId;
  final DateTime createdAt;
  const Photo(
      {required this.id,
      required this.path,
      required this.deviceId,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['path'] = Variable<String>(path);
    map['device_id'] = Variable<int>(deviceId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PhotosCompanion toCompanion(bool nullToAbsent) {
    return PhotosCompanion(
      id: Value(id),
      path: Value(path),
      deviceId: Value(deviceId),
      createdAt: Value(createdAt),
    );
  }

  factory Photo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Photo(
      id: serializer.fromJson<int>(json['id']),
      path: serializer.fromJson<String>(json['path']),
      deviceId: serializer.fromJson<int>(json['deviceId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'path': serializer.toJson<String>(path),
      'deviceId': serializer.toJson<int>(deviceId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Photo copyWith({int? id, String? path, int? deviceId, DateTime? createdAt}) =>
      Photo(
        id: id ?? this.id,
        path: path ?? this.path,
        deviceId: deviceId ?? this.deviceId,
        createdAt: createdAt ?? this.createdAt,
      );
  Photo copyWithCompanion(PhotosCompanion data) {
    return Photo(
      id: data.id.present ? data.id.value : this.id,
      path: data.path.present ? data.path.value : this.path,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Photo(')
          ..write('id: $id, ')
          ..write('path: $path, ')
          ..write('deviceId: $deviceId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, path, deviceId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Photo &&
          other.id == this.id &&
          other.path == this.path &&
          other.deviceId == this.deviceId &&
          other.createdAt == this.createdAt);
}

class PhotosCompanion extends UpdateCompanion<Photo> {
  final Value<int> id;
  final Value<String> path;
  final Value<int> deviceId;
  final Value<DateTime> createdAt;
  const PhotosCompanion({
    this.id = const Value.absent(),
    this.path = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PhotosCompanion.insert({
    this.id = const Value.absent(),
    required String path,
    required int deviceId,
    required DateTime createdAt,
  })  : path = Value(path),
        deviceId = Value(deviceId),
        createdAt = Value(createdAt);
  static Insertable<Photo> custom({
    Expression<int>? id,
    Expression<String>? path,
    Expression<int>? deviceId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (path != null) 'path': path,
      if (deviceId != null) 'device_id': deviceId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PhotosCompanion copyWith(
      {Value<int>? id,
      Value<String>? path,
      Value<int>? deviceId,
      Value<DateTime>? createdAt}) {
    return PhotosCompanion(
      id: id ?? this.id,
      path: path ?? this.path,
      deviceId: deviceId ?? this.deviceId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<int>(deviceId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PhotosCompanion(')
          ..write('id: $id, ')
          ..write('path: $path, ')
          ..write('deviceId: $deviceId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $CopyActionsTable extends CopyActions
    with TableInfo<$CopyActionsTable, CopyAction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CopyActionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<int> deviceId = GeneratedColumn<int>(
      'device_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES devices (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, deviceId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'copy_actions';
  @override
  VerificationContext validateIntegrity(Insertable<CopyAction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CopyAction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CopyAction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}device_id'])!,
    );
  }

  @override
  $CopyActionsTable createAlias(String alias) {
    return $CopyActionsTable(attachedDatabase, alias);
  }
}

class CopyAction extends DataClass implements Insertable<CopyAction> {
  final int id;
  final int deviceId;
  const CopyAction({required this.id, required this.deviceId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['device_id'] = Variable<int>(deviceId);
    return map;
  }

  CopyActionsCompanion toCompanion(bool nullToAbsent) {
    return CopyActionsCompanion(
      id: Value(id),
      deviceId: Value(deviceId),
    );
  }

  factory CopyAction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CopyAction(
      id: serializer.fromJson<int>(json['id']),
      deviceId: serializer.fromJson<int>(json['deviceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'deviceId': serializer.toJson<int>(deviceId),
    };
  }

  CopyAction copyWith({int? id, int? deviceId}) => CopyAction(
        id: id ?? this.id,
        deviceId: deviceId ?? this.deviceId,
      );
  CopyAction copyWithCompanion(CopyActionsCompanion data) {
    return CopyAction(
      id: data.id.present ? data.id.value : this.id,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CopyAction(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, deviceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CopyAction &&
          other.id == this.id &&
          other.deviceId == this.deviceId);
}

class CopyActionsCompanion extends UpdateCompanion<CopyAction> {
  final Value<int> id;
  final Value<int> deviceId;
  const CopyActionsCompanion({
    this.id = const Value.absent(),
    this.deviceId = const Value.absent(),
  });
  CopyActionsCompanion.insert({
    this.id = const Value.absent(),
    required int deviceId,
  }) : deviceId = Value(deviceId);
  static Insertable<CopyAction> custom({
    Expression<int>? id,
    Expression<int>? deviceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (deviceId != null) 'device_id': deviceId,
    });
  }

  CopyActionsCompanion copyWith({Value<int>? id, Value<int>? deviceId}) {
    return CopyActionsCompanion(
      id: id ?? this.id,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<int>(deviceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CopyActionsCompanion(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }
}

class $ViewActionsTable extends ViewActions
    with TableInfo<$ViewActionsTable, ViewAction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ViewActionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<int> deviceId = GeneratedColumn<int>(
      'device_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES devices (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, deviceId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'view_actions';
  @override
  VerificationContext validateIntegrity(Insertable<ViewAction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ViewAction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ViewAction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}device_id'])!,
    );
  }

  @override
  $ViewActionsTable createAlias(String alias) {
    return $ViewActionsTable(attachedDatabase, alias);
  }
}

class ViewAction extends DataClass implements Insertable<ViewAction> {
  final int id;
  final int deviceId;
  const ViewAction({required this.id, required this.deviceId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['device_id'] = Variable<int>(deviceId);
    return map;
  }

  ViewActionsCompanion toCompanion(bool nullToAbsent) {
    return ViewActionsCompanion(
      id: Value(id),
      deviceId: Value(deviceId),
    );
  }

  factory ViewAction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ViewAction(
      id: serializer.fromJson<int>(json['id']),
      deviceId: serializer.fromJson<int>(json['deviceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'deviceId': serializer.toJson<int>(deviceId),
    };
  }

  ViewAction copyWith({int? id, int? deviceId}) => ViewAction(
        id: id ?? this.id,
        deviceId: deviceId ?? this.deviceId,
      );
  ViewAction copyWithCompanion(ViewActionsCompanion data) {
    return ViewAction(
      id: data.id.present ? data.id.value : this.id,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ViewAction(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, deviceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ViewAction &&
          other.id == this.id &&
          other.deviceId == this.deviceId);
}

class ViewActionsCompanion extends UpdateCompanion<ViewAction> {
  final Value<int> id;
  final Value<int> deviceId;
  const ViewActionsCompanion({
    this.id = const Value.absent(),
    this.deviceId = const Value.absent(),
  });
  ViewActionsCompanion.insert({
    this.id = const Value.absent(),
    required int deviceId,
  }) : deviceId = Value(deviceId);
  static Insertable<ViewAction> custom({
    Expression<int>? id,
    Expression<int>? deviceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (deviceId != null) 'device_id': deviceId,
    });
  }

  ViewActionsCompanion copyWith({Value<int>? id, Value<int>? deviceId}) {
    return ViewActionsCompanion(
      id: id ?? this.id,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<int>(deviceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ViewActionsCompanion(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId')
          ..write(')'))
        .toString();
  }
}

class $SaveActionsTable extends SaveActions
    with TableInfo<$SaveActionsTable, SaveAction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SaveActionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _deviceIdMeta =
      const VerificationMeta('deviceId');
  @override
  late final GeneratedColumn<int> deviceId = GeneratedColumn<int>(
      'device_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES devices (id)'));
  static const VerificationMeta _directoryMeta =
      const VerificationMeta('directory');
  @override
  late final GeneratedColumn<String> directory = GeneratedColumn<String>(
      'directory', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, deviceId, directory];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'save_actions';
  @override
  VerificationContext validateIntegrity(Insertable<SaveAction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('device_id')) {
      context.handle(_deviceIdMeta,
          deviceId.isAcceptableOrUnknown(data['device_id']!, _deviceIdMeta));
    } else if (isInserting) {
      context.missing(_deviceIdMeta);
    }
    if (data.containsKey('directory')) {
      context.handle(_directoryMeta,
          directory.isAcceptableOrUnknown(data['directory']!, _directoryMeta));
    } else if (isInserting) {
      context.missing(_directoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SaveAction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SaveAction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      deviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}device_id'])!,
      directory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}directory'])!,
    );
  }

  @override
  $SaveActionsTable createAlias(String alias) {
    return $SaveActionsTable(attachedDatabase, alias);
  }
}

class SaveAction extends DataClass implements Insertable<SaveAction> {
  final int id;
  final int deviceId;
  final String directory;
  const SaveAction(
      {required this.id, required this.deviceId, required this.directory});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['device_id'] = Variable<int>(deviceId);
    map['directory'] = Variable<String>(directory);
    return map;
  }

  SaveActionsCompanion toCompanion(bool nullToAbsent) {
    return SaveActionsCompanion(
      id: Value(id),
      deviceId: Value(deviceId),
      directory: Value(directory),
    );
  }

  factory SaveAction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SaveAction(
      id: serializer.fromJson<int>(json['id']),
      deviceId: serializer.fromJson<int>(json['deviceId']),
      directory: serializer.fromJson<String>(json['directory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'deviceId': serializer.toJson<int>(deviceId),
      'directory': serializer.toJson<String>(directory),
    };
  }

  SaveAction copyWith({int? id, int? deviceId, String? directory}) =>
      SaveAction(
        id: id ?? this.id,
        deviceId: deviceId ?? this.deviceId,
        directory: directory ?? this.directory,
      );
  SaveAction copyWithCompanion(SaveActionsCompanion data) {
    return SaveAction(
      id: data.id.present ? data.id.value : this.id,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
      directory: data.directory.present ? data.directory.value : this.directory,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SaveAction(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId, ')
          ..write('directory: $directory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, deviceId, directory);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SaveAction &&
          other.id == this.id &&
          other.deviceId == this.deviceId &&
          other.directory == this.directory);
}

class SaveActionsCompanion extends UpdateCompanion<SaveAction> {
  final Value<int> id;
  final Value<int> deviceId;
  final Value<String> directory;
  const SaveActionsCompanion({
    this.id = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.directory = const Value.absent(),
  });
  SaveActionsCompanion.insert({
    this.id = const Value.absent(),
    required int deviceId,
    required String directory,
  })  : deviceId = Value(deviceId),
        directory = Value(directory);
  static Insertable<SaveAction> custom({
    Expression<int>? id,
    Expression<int>? deviceId,
    Expression<String>? directory,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (deviceId != null) 'device_id': deviceId,
      if (directory != null) 'directory': directory,
    });
  }

  SaveActionsCompanion copyWith(
      {Value<int>? id, Value<int>? deviceId, Value<String>? directory}) {
    return SaveActionsCompanion(
      id: id ?? this.id,
      deviceId: deviceId ?? this.deviceId,
      directory: directory ?? this.directory,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<int>(deviceId.value);
    }
    if (directory.present) {
      map['directory'] = Variable<String>(directory.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SaveActionsCompanion(')
          ..write('id: $id, ')
          ..write('deviceId: $deviceId, ')
          ..write('directory: $directory')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DevicesTable devices = $DevicesTable(this);
  late final $AddressesTable addresses = $AddressesTable(this);
  late final $PhotosTable photos = $PhotosTable(this);
  late final $CopyActionsTable copyActions = $CopyActionsTable(this);
  late final $ViewActionsTable viewActions = $ViewActionsTable(this);
  late final $SaveActionsTable saveActions = $SaveActionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [devices, addresses, photos, copyActions, viewActions, saveActions];
}

typedef $$DevicesTableCreateCompanionBuilder = DevicesCompanion Function({
  Value<int> id,
  required String name,
  required String macAddress,
  required Uint8List photo,
});
typedef $$DevicesTableUpdateCompanionBuilder = DevicesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> macAddress,
  Value<Uint8List> photo,
});

final class $$DevicesTableReferences
    extends BaseReferences<_$AppDatabase, $DevicesTable, Device> {
  $$DevicesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AddressesTable, List<AddressesData>>
      _addressesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.addresses,
              aliasName:
                  $_aliasNameGenerator(db.devices.id, db.addresses.deviceId));

  $$AddressesTableProcessedTableManager get addressesRefs {
    final manager = $$AddressesTableTableManager($_db, $_db.addresses)
        .filter((f) => f.deviceId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_addressesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PhotosTable, List<Photo>> _photosRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.photos,
          aliasName: $_aliasNameGenerator(db.devices.id, db.photos.deviceId));

  $$PhotosTableProcessedTableManager get photosRefs {
    final manager = $$PhotosTableTableManager($_db, $_db.photos)
        .filter((f) => f.deviceId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_photosRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CopyActionsTable, List<CopyAction>>
      _copyActionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.copyActions,
              aliasName:
                  $_aliasNameGenerator(db.devices.id, db.copyActions.deviceId));

  $$CopyActionsTableProcessedTableManager get copyActionsRefs {
    final manager = $$CopyActionsTableTableManager($_db, $_db.copyActions)
        .filter((f) => f.deviceId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_copyActionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ViewActionsTable, List<ViewAction>>
      _viewActionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.viewActions,
              aliasName:
                  $_aliasNameGenerator(db.devices.id, db.viewActions.deviceId));

  $$ViewActionsTableProcessedTableManager get viewActionsRefs {
    final manager = $$ViewActionsTableTableManager($_db, $_db.viewActions)
        .filter((f) => f.deviceId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_viewActionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$SaveActionsTable, List<SaveAction>>
      _saveActionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.saveActions,
              aliasName:
                  $_aliasNameGenerator(db.devices.id, db.saveActions.deviceId));

  $$SaveActionsTableProcessedTableManager get saveActionsRefs {
    final manager = $$SaveActionsTableTableManager($_db, $_db.saveActions)
        .filter((f) => f.deviceId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_saveActionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DevicesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DevicesTable> {
  $$DevicesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get macAddress => $state.composableBuilder(
      column: $state.table.macAddress,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<Uint8List> get photo => $state.composableBuilder(
      column: $state.table.photo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter addressesRefs(
      ComposableFilter Function($$AddressesTableFilterComposer f) f) {
    final $$AddressesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.addresses,
        getReferencedColumn: (t) => t.deviceId,
        builder: (joinBuilder, parentComposers) =>
            $$AddressesTableFilterComposer(ComposerState(
                $state.db, $state.db.addresses, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter photosRefs(
      ComposableFilter Function($$PhotosTableFilterComposer f) f) {
    final $$PhotosTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.photos,
        getReferencedColumn: (t) => t.deviceId,
        builder: (joinBuilder, parentComposers) => $$PhotosTableFilterComposer(
            ComposerState(
                $state.db, $state.db.photos, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter copyActionsRefs(
      ComposableFilter Function($$CopyActionsTableFilterComposer f) f) {
    final $$CopyActionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.copyActions,
        getReferencedColumn: (t) => t.deviceId,
        builder: (joinBuilder, parentComposers) =>
            $$CopyActionsTableFilterComposer(ComposerState($state.db,
                $state.db.copyActions, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter viewActionsRefs(
      ComposableFilter Function($$ViewActionsTableFilterComposer f) f) {
    final $$ViewActionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.viewActions,
        getReferencedColumn: (t) => t.deviceId,
        builder: (joinBuilder, parentComposers) =>
            $$ViewActionsTableFilterComposer(ComposerState($state.db,
                $state.db.viewActions, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter saveActionsRefs(
      ComposableFilter Function($$SaveActionsTableFilterComposer f) f) {
    final $$SaveActionsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.saveActions,
        getReferencedColumn: (t) => t.deviceId,
        builder: (joinBuilder, parentComposers) =>
            $$SaveActionsTableFilterComposer(ComposerState($state.db,
                $state.db.saveActions, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$DevicesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DevicesTable> {
  $$DevicesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get macAddress => $state.composableBuilder(
      column: $state.table.macAddress,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<Uint8List> get photo => $state.composableBuilder(
      column: $state.table.photo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$DevicesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DevicesTable,
    Device,
    $$DevicesTableFilterComposer,
    $$DevicesTableOrderingComposer,
    $$DevicesTableCreateCompanionBuilder,
    $$DevicesTableUpdateCompanionBuilder,
    (Device, $$DevicesTableReferences),
    Device,
    PrefetchHooks Function(
        {bool addressesRefs,
        bool photosRefs,
        bool copyActionsRefs,
        bool viewActionsRefs,
        bool saveActionsRefs})> {
  $$DevicesTableTableManager(_$AppDatabase db, $DevicesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DevicesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DevicesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> macAddress = const Value.absent(),
            Value<Uint8List> photo = const Value.absent(),
          }) =>
              DevicesCompanion(
            id: id,
            name: name,
            macAddress: macAddress,
            photo: photo,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String macAddress,
            required Uint8List photo,
          }) =>
              DevicesCompanion.insert(
            id: id,
            name: name,
            macAddress: macAddress,
            photo: photo,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$DevicesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {addressesRefs = false,
              photosRefs = false,
              copyActionsRefs = false,
              viewActionsRefs = false,
              saveActionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (addressesRefs) db.addresses,
                if (photosRefs) db.photos,
                if (copyActionsRefs) db.copyActions,
                if (viewActionsRefs) db.viewActions,
                if (saveActionsRefs) db.saveActions
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (addressesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$DevicesTableReferences._addressesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DevicesTableReferences(db, table, p0)
                                .addressesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.deviceId == item.id),
                        typedResults: items),
                  if (photosRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$DevicesTableReferences._photosRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DevicesTableReferences(db, table, p0).photosRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.deviceId == item.id),
                        typedResults: items),
                  if (copyActionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$DevicesTableReferences._copyActionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DevicesTableReferences(db, table, p0)
                                .copyActionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.deviceId == item.id),
                        typedResults: items),
                  if (viewActionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$DevicesTableReferences._viewActionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DevicesTableReferences(db, table, p0)
                                .viewActionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.deviceId == item.id),
                        typedResults: items),
                  if (saveActionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$DevicesTableReferences._saveActionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DevicesTableReferences(db, table, p0)
                                .saveActionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.deviceId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DevicesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DevicesTable,
    Device,
    $$DevicesTableFilterComposer,
    $$DevicesTableOrderingComposer,
    $$DevicesTableCreateCompanionBuilder,
    $$DevicesTableUpdateCompanionBuilder,
    (Device, $$DevicesTableReferences),
    Device,
    PrefetchHooks Function(
        {bool addressesRefs,
        bool photosRefs,
        bool copyActionsRefs,
        bool viewActionsRefs,
        bool saveActionsRefs})>;
typedef $$AddressesTableCreateCompanionBuilder = AddressesCompanion Function({
  Value<int> id,
  required String address,
  required int deviceId,
});
typedef $$AddressesTableUpdateCompanionBuilder = AddressesCompanion Function({
  Value<int> id,
  Value<String> address,
  Value<int> deviceId,
});

final class $$AddressesTableReferences
    extends BaseReferences<_$AppDatabase, $AddressesTable, AddressesData> {
  $$AddressesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DevicesTable _deviceIdTable(_$AppDatabase db) => db.devices
      .createAlias($_aliasNameGenerator(db.addresses.deviceId, db.devices.id));

  $$DevicesTableProcessedTableManager? get deviceId {
    if ($_item.deviceId == null) return null;
    final manager = $$DevicesTableTableManager($_db, $_db.devices)
        .filter((f) => f.id($_item.deviceId!));
    final item = $_typedResult.readTableOrNull(_deviceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$AddressesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AddressesTable> {
  $$AddressesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$DevicesTableFilterComposer get deviceId {
    final $$DevicesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$DevicesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$AddressesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AddressesTable> {
  $$AddressesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$DevicesTableOrderingComposer get deviceId {
    final $$DevicesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DevicesTableOrderingComposer(ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$AddressesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AddressesTable,
    AddressesData,
    $$AddressesTableFilterComposer,
    $$AddressesTableOrderingComposer,
    $$AddressesTableCreateCompanionBuilder,
    $$AddressesTableUpdateCompanionBuilder,
    (AddressesData, $$AddressesTableReferences),
    AddressesData,
    PrefetchHooks Function({bool deviceId})> {
  $$AddressesTableTableManager(_$AppDatabase db, $AddressesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AddressesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AddressesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<int> deviceId = const Value.absent(),
          }) =>
              AddressesCompanion(
            id: id,
            address: address,
            deviceId: deviceId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String address,
            required int deviceId,
          }) =>
              AddressesCompanion.insert(
            id: id,
            address: address,
            deviceId: deviceId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AddressesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({deviceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (deviceId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.deviceId,
                    referencedTable:
                        $$AddressesTableReferences._deviceIdTable(db),
                    referencedColumn:
                        $$AddressesTableReferences._deviceIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$AddressesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AddressesTable,
    AddressesData,
    $$AddressesTableFilterComposer,
    $$AddressesTableOrderingComposer,
    $$AddressesTableCreateCompanionBuilder,
    $$AddressesTableUpdateCompanionBuilder,
    (AddressesData, $$AddressesTableReferences),
    AddressesData,
    PrefetchHooks Function({bool deviceId})>;
typedef $$PhotosTableCreateCompanionBuilder = PhotosCompanion Function({
  Value<int> id,
  required String path,
  required int deviceId,
  required DateTime createdAt,
});
typedef $$PhotosTableUpdateCompanionBuilder = PhotosCompanion Function({
  Value<int> id,
  Value<String> path,
  Value<int> deviceId,
  Value<DateTime> createdAt,
});

final class $$PhotosTableReferences
    extends BaseReferences<_$AppDatabase, $PhotosTable, Photo> {
  $$PhotosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DevicesTable _deviceIdTable(_$AppDatabase db) => db.devices
      .createAlias($_aliasNameGenerator(db.photos.deviceId, db.devices.id));

  $$DevicesTableProcessedTableManager? get deviceId {
    if ($_item.deviceId == null) return null;
    final manager = $$DevicesTableTableManager($_db, $_db.devices)
        .filter((f) => f.id($_item.deviceId!));
    final item = $_typedResult.readTableOrNull(_deviceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PhotosTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PhotosTable> {
  $$PhotosTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get path => $state.composableBuilder(
      column: $state.table.path,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$DevicesTableFilterComposer get deviceId {
    final $$DevicesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$DevicesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PhotosTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PhotosTable> {
  $$PhotosTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get path => $state.composableBuilder(
      column: $state.table.path,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$DevicesTableOrderingComposer get deviceId {
    final $$DevicesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DevicesTableOrderingComposer(ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$PhotosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PhotosTable,
    Photo,
    $$PhotosTableFilterComposer,
    $$PhotosTableOrderingComposer,
    $$PhotosTableCreateCompanionBuilder,
    $$PhotosTableUpdateCompanionBuilder,
    (Photo, $$PhotosTableReferences),
    Photo,
    PrefetchHooks Function({bool deviceId})> {
  $$PhotosTableTableManager(_$AppDatabase db, $PhotosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PhotosTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PhotosTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> path = const Value.absent(),
            Value<int> deviceId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              PhotosCompanion(
            id: id,
            path: path,
            deviceId: deviceId,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String path,
            required int deviceId,
            required DateTime createdAt,
          }) =>
              PhotosCompanion.insert(
            id: id,
            path: path,
            deviceId: deviceId,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PhotosTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({deviceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (deviceId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.deviceId,
                    referencedTable: $$PhotosTableReferences._deviceIdTable(db),
                    referencedColumn:
                        $$PhotosTableReferences._deviceIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PhotosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PhotosTable,
    Photo,
    $$PhotosTableFilterComposer,
    $$PhotosTableOrderingComposer,
    $$PhotosTableCreateCompanionBuilder,
    $$PhotosTableUpdateCompanionBuilder,
    (Photo, $$PhotosTableReferences),
    Photo,
    PrefetchHooks Function({bool deviceId})>;
typedef $$CopyActionsTableCreateCompanionBuilder = CopyActionsCompanion
    Function({
  Value<int> id,
  required int deviceId,
});
typedef $$CopyActionsTableUpdateCompanionBuilder = CopyActionsCompanion
    Function({
  Value<int> id,
  Value<int> deviceId,
});

final class $$CopyActionsTableReferences
    extends BaseReferences<_$AppDatabase, $CopyActionsTable, CopyAction> {
  $$CopyActionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DevicesTable _deviceIdTable(_$AppDatabase db) =>
      db.devices.createAlias(
          $_aliasNameGenerator(db.copyActions.deviceId, db.devices.id));

  $$DevicesTableProcessedTableManager? get deviceId {
    if ($_item.deviceId == null) return null;
    final manager = $$DevicesTableTableManager($_db, $_db.devices)
        .filter((f) => f.id($_item.deviceId!));
    final item = $_typedResult.readTableOrNull(_deviceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CopyActionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CopyActionsTable> {
  $$CopyActionsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$DevicesTableFilterComposer get deviceId {
    final $$DevicesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$DevicesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$CopyActionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CopyActionsTable> {
  $$CopyActionsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$DevicesTableOrderingComposer get deviceId {
    final $$DevicesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DevicesTableOrderingComposer(ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$CopyActionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CopyActionsTable,
    CopyAction,
    $$CopyActionsTableFilterComposer,
    $$CopyActionsTableOrderingComposer,
    $$CopyActionsTableCreateCompanionBuilder,
    $$CopyActionsTableUpdateCompanionBuilder,
    (CopyAction, $$CopyActionsTableReferences),
    CopyAction,
    PrefetchHooks Function({bool deviceId})> {
  $$CopyActionsTableTableManager(_$AppDatabase db, $CopyActionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CopyActionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CopyActionsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> deviceId = const Value.absent(),
          }) =>
              CopyActionsCompanion(
            id: id,
            deviceId: deviceId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int deviceId,
          }) =>
              CopyActionsCompanion.insert(
            id: id,
            deviceId: deviceId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CopyActionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({deviceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (deviceId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.deviceId,
                    referencedTable:
                        $$CopyActionsTableReferences._deviceIdTable(db),
                    referencedColumn:
                        $$CopyActionsTableReferences._deviceIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CopyActionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CopyActionsTable,
    CopyAction,
    $$CopyActionsTableFilterComposer,
    $$CopyActionsTableOrderingComposer,
    $$CopyActionsTableCreateCompanionBuilder,
    $$CopyActionsTableUpdateCompanionBuilder,
    (CopyAction, $$CopyActionsTableReferences),
    CopyAction,
    PrefetchHooks Function({bool deviceId})>;
typedef $$ViewActionsTableCreateCompanionBuilder = ViewActionsCompanion
    Function({
  Value<int> id,
  required int deviceId,
});
typedef $$ViewActionsTableUpdateCompanionBuilder = ViewActionsCompanion
    Function({
  Value<int> id,
  Value<int> deviceId,
});

final class $$ViewActionsTableReferences
    extends BaseReferences<_$AppDatabase, $ViewActionsTable, ViewAction> {
  $$ViewActionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DevicesTable _deviceIdTable(_$AppDatabase db) =>
      db.devices.createAlias(
          $_aliasNameGenerator(db.viewActions.deviceId, db.devices.id));

  $$DevicesTableProcessedTableManager? get deviceId {
    if ($_item.deviceId == null) return null;
    final manager = $$DevicesTableTableManager($_db, $_db.devices)
        .filter((f) => f.id($_item.deviceId!));
    final item = $_typedResult.readTableOrNull(_deviceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ViewActionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ViewActionsTable> {
  $$ViewActionsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$DevicesTableFilterComposer get deviceId {
    final $$DevicesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$DevicesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$ViewActionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ViewActionsTable> {
  $$ViewActionsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$DevicesTableOrderingComposer get deviceId {
    final $$DevicesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DevicesTableOrderingComposer(ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$ViewActionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ViewActionsTable,
    ViewAction,
    $$ViewActionsTableFilterComposer,
    $$ViewActionsTableOrderingComposer,
    $$ViewActionsTableCreateCompanionBuilder,
    $$ViewActionsTableUpdateCompanionBuilder,
    (ViewAction, $$ViewActionsTableReferences),
    ViewAction,
    PrefetchHooks Function({bool deviceId})> {
  $$ViewActionsTableTableManager(_$AppDatabase db, $ViewActionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ViewActionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ViewActionsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> deviceId = const Value.absent(),
          }) =>
              ViewActionsCompanion(
            id: id,
            deviceId: deviceId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int deviceId,
          }) =>
              ViewActionsCompanion.insert(
            id: id,
            deviceId: deviceId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ViewActionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({deviceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (deviceId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.deviceId,
                    referencedTable:
                        $$ViewActionsTableReferences._deviceIdTable(db),
                    referencedColumn:
                        $$ViewActionsTableReferences._deviceIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ViewActionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ViewActionsTable,
    ViewAction,
    $$ViewActionsTableFilterComposer,
    $$ViewActionsTableOrderingComposer,
    $$ViewActionsTableCreateCompanionBuilder,
    $$ViewActionsTableUpdateCompanionBuilder,
    (ViewAction, $$ViewActionsTableReferences),
    ViewAction,
    PrefetchHooks Function({bool deviceId})>;
typedef $$SaveActionsTableCreateCompanionBuilder = SaveActionsCompanion
    Function({
  Value<int> id,
  required int deviceId,
  required String directory,
});
typedef $$SaveActionsTableUpdateCompanionBuilder = SaveActionsCompanion
    Function({
  Value<int> id,
  Value<int> deviceId,
  Value<String> directory,
});

final class $$SaveActionsTableReferences
    extends BaseReferences<_$AppDatabase, $SaveActionsTable, SaveAction> {
  $$SaveActionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DevicesTable _deviceIdTable(_$AppDatabase db) =>
      db.devices.createAlias(
          $_aliasNameGenerator(db.saveActions.deviceId, db.devices.id));

  $$DevicesTableProcessedTableManager? get deviceId {
    if ($_item.deviceId == null) return null;
    final manager = $$DevicesTableTableManager($_db, $_db.devices)
        .filter((f) => f.id($_item.deviceId!));
    final item = $_typedResult.readTableOrNull(_deviceIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SaveActionsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SaveActionsTable> {
  $$SaveActionsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get directory => $state.composableBuilder(
      column: $state.table.directory,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$DevicesTableFilterComposer get deviceId {
    final $$DevicesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$DevicesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SaveActionsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SaveActionsTable> {
  $$SaveActionsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get directory => $state.composableBuilder(
      column: $state.table.directory,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$DevicesTableOrderingComposer get deviceId {
    final $$DevicesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.deviceId,
        referencedTable: $state.db.devices,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$DevicesTableOrderingComposer(ComposerState(
                $state.db, $state.db.devices, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SaveActionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SaveActionsTable,
    SaveAction,
    $$SaveActionsTableFilterComposer,
    $$SaveActionsTableOrderingComposer,
    $$SaveActionsTableCreateCompanionBuilder,
    $$SaveActionsTableUpdateCompanionBuilder,
    (SaveAction, $$SaveActionsTableReferences),
    SaveAction,
    PrefetchHooks Function({bool deviceId})> {
  $$SaveActionsTableTableManager(_$AppDatabase db, $SaveActionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SaveActionsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SaveActionsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> deviceId = const Value.absent(),
            Value<String> directory = const Value.absent(),
          }) =>
              SaveActionsCompanion(
            id: id,
            deviceId: deviceId,
            directory: directory,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int deviceId,
            required String directory,
          }) =>
              SaveActionsCompanion.insert(
            id: id,
            deviceId: deviceId,
            directory: directory,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SaveActionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({deviceId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (deviceId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.deviceId,
                    referencedTable:
                        $$SaveActionsTableReferences._deviceIdTable(db),
                    referencedColumn:
                        $$SaveActionsTableReferences._deviceIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SaveActionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SaveActionsTable,
    SaveAction,
    $$SaveActionsTableFilterComposer,
    $$SaveActionsTableOrderingComposer,
    $$SaveActionsTableCreateCompanionBuilder,
    $$SaveActionsTableUpdateCompanionBuilder,
    (SaveAction, $$SaveActionsTableReferences),
    SaveAction,
    PrefetchHooks Function({bool deviceId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DevicesTableTableManager get devices =>
      $$DevicesTableTableManager(_db, _db.devices);
  $$AddressesTableTableManager get addresses =>
      $$AddressesTableTableManager(_db, _db.addresses);
  $$PhotosTableTableManager get photos =>
      $$PhotosTableTableManager(_db, _db.photos);
  $$CopyActionsTableTableManager get copyActions =>
      $$CopyActionsTableTableManager(_db, _db.copyActions);
  $$ViewActionsTableTableManager get viewActions =>
      $$ViewActionsTableTableManager(_db, _db.viewActions);
  $$SaveActionsTableTableManager get saveActions =>
      $$SaveActionsTableTableManager(_db, _db.saveActions);
}
