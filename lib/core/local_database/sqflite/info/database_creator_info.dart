
import 'package:sqflite/sqflite.dart';

import 'database_info.dart';

class SqfliteDatabaseCreatorInfo {
  SqfliteDatabaseInfo databaseInfo;
  Future<void> Function(Database database, int version) createDatabase;
  Future<void> Function()? initDatabase;
  Future<void> Function()? closeDatabase;

  SqfliteDatabaseCreatorInfo(
      {required this.databaseInfo,
      required this.createDatabase,
      required this.closeDatabase,
      this.initDatabase});
}
