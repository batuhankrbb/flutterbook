
import '../info/database_creator_info.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqfliteDatabaseManager {
  SqfliteDatabaseManager._();

  static var shared = SqfliteDatabaseManager._();

  Database? _dataBase;

  Future<Database> getDataBase(
      {required SqfliteDatabaseCreatorInfo sqfliteDatabaseCreatorInfo}) async {
    if (_dataBase != null) {
      return _dataBase!;
    }
    _dataBase = await initDatabase(sqfliteDatabaseCreatorInfo);
    return _dataBase!;
  }

  Future<void> closeDatabase(
      SqfliteDatabaseCreatorInfo sqfliteDatabaseCreatorInfo) async {
    var dataBase = await getDataBase(
        sqfliteDatabaseCreatorInfo: sqfliteDatabaseCreatorInfo);
    if (sqfliteDatabaseCreatorInfo.closeDatabase != null) {
      sqfliteDatabaseCreatorInfo.closeDatabase!();
    }
    await dataBase.close();
  }

  Future<Database> initDatabase(
      SqfliteDatabaseCreatorInfo sqfliteDatabaseCreatorInfo) async {
    final databasePath = await getDatabasesPath();
    final path = join(
        databasePath, sqfliteDatabaseCreatorInfo.databaseInfo.databaseName);
    if (sqfliteDatabaseCreatorInfo.initDatabase != null) {
      sqfliteDatabaseCreatorInfo.initDatabase!();
    }
    return await _createDatabase(sqfliteDatabaseCreatorInfo, path);
  }

  Future<Database> _createDatabase(
      SqfliteDatabaseCreatorInfo sqfliteDatabaseCreatorInfo,
      String path) async {
    return await openDatabase(path,
        version: sqfliteDatabaseCreatorInfo.databaseInfo.databaseVersion,
        onConfigure: (database) async {
      await database.execute("PRAGMA foreign_keys = ON");
    }, onCreate: (database, version) async {
      await sqfliteDatabaseCreatorInfo.createDatabase(database, version);
    });
  }
}
