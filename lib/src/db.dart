import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'db.g.dart';

final db = AppDatabase(driftDatabase(name: "sofort.sqlite"));

class Devices extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get macAddress => text()();
  BlobColumn get photo => blob()();
}

/// The device's addresses.
/// Since the same device might be connect through different networks, for example.
class Addresses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get address => text()();
  IntColumn get deviceId => integer().references(Devices, #id)();
}

class Photos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get path => text()();
  IntColumn get deviceId => integer().references(Devices, #id)();
  DateTimeColumn get createdAt => dateTime()();
}

class _Action extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get deviceId => integer().references(Devices, #id)();
}

/// Copy the photo to the clipboard.
class CopyActions extends _Action {}

/// View the photo.
class ViewActions extends _Action {}

/// Save the photo to a directory.
class SaveActions extends _Action {
  TextColumn get directory => text()();
}

@DriftDatabase(tables: [
  Devices,
  Addresses,
  Photos,
  CopyActions,
  ViewActions,
  SaveActions,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
