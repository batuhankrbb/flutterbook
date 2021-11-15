import 'package:flutter/services.dart';
import 'package:flutter_book/core/utils/logger.dart';
import '../contracts/base_sqflite_model.dart';
import '../info/database_creator_info.dart';
import 'sqflite_database_manager.dart';
import 'sqflite_decoder.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteHelper {
  late Database database; //* For detailed executions

  SqfliteHelper._();

  static var shared = SqfliteHelper._();

  Future<void> initializeDatabase(
      {required SqfliteDatabaseCreatorInfo sqfliteDatabaseCreatorInfo}) async {
    database = await SqfliteDatabaseManager.shared
        .getDataBase(sqfliteDatabaseCreatorInfo: sqfliteDatabaseCreatorInfo);
    
  }

  Future<int> insert<T extends BaseSqfliteModel>(
      {required T model, required String table}) async {
    return executeWithLogger((sqflitedatabase) async {
      var id = await database.insert(table, model.toJson());
      return id;
    });
  }

  Future<int> update<T extends BaseSqfliteModel>(
      {required T model,
      required String table,
      String? where,
      List<dynamic>? whereArgs}) async {
    return executeWithLogger((sqflitedatabase) async {
      var id = await database.update(table, model.toJson(),
          where: where, whereArgs: whereArgs);
      return id;
    });
  }

  Future<int> delete(
      {required String table,
      required String where,
      required List<dynamic> whereArgs}) async {
    return executeWithLogger((sqflitedatabase) async {
      var id = await database.delete(table, where: where, whereArgs: whereArgs);
      return id;
    });
  }

  Future<int> deleteById({
    required String table,
    required dynamic idToDelete,
  }) async {
    return executeWithLogger((sqflitedatabase) async {
      var id = await database
          .delete(table, where: "id = ?", whereArgs: [idToDelete]);
      return id;
    });
  }

  Future<K> query<T extends BaseSqfliteModel, K>(
      {required T responseType,
      required String table,
      List<String>? columns,
      String? where,
      List<dynamic>? whereArgs,
      String? orderBy,
      int? limit}) async {
    return executeWithLogger((sqflitedatabase) async {
      var data = await sqflitedatabase.query(table,
          columns: columns,
          where: where,
          whereArgs: whereArgs,
          orderBy: orderBy,
          limit: limit);
      var decodedData = SqfliteDecoder.shared
          .decode<T, K>(response: data, responseType: responseType);
      return decodedData;
    });
  }

  void getErrorMessage({required DatabaseException databaseException}) {
    //* Burasının kötü yazılmış olmasının sebebi maalesef sqflite'ın çok saçma bir error sistemi olması yüzünden :(
    LogHelper.shared
        .errorPrint("Sqflite Error code: ${databaseException.getResultCode()}");
    LogHelper.shared
        .errorPrint("Sqflite Error ToString: ${databaseException.toString()}");

    if (databaseException.isDatabaseClosedError()) {
      LogHelper.shared.errorPrint("Sqflite Error: DatabaseClosedError");
    }
    if (databaseException.isDuplicateColumnError()) {
      LogHelper.shared.errorPrint("Sqflite Error: DuplicateColumnError");
    }
    if (databaseException.isNoSuchTableError()) {
      LogHelper.shared.errorPrint("Sqflite Error: NoSuchTableError");
    }
    if (databaseException.isNotNullConstraintError()) {
      LogHelper.shared.errorPrint("Sqflite Error: NotNullConstraintError");
    }
    if (databaseException.isOpenFailedError()) {
      LogHelper.shared.errorPrint("Sqflite Error: OpenFailedError");
    }
    if (databaseException.isReadOnlyError()) {
      LogHelper.shared.errorPrint("Sqflite Error: ReadOnlyError");
    }
    if (databaseException.isSyntaxError()) {
      LogHelper.shared.errorPrint("Sqflite Error: SyntaxError");
    }
    if (databaseException.isUniqueConstraintError()) {
      LogHelper.shared.errorPrint("Sqflite Error: UniqueConstraintError");
    }
  }

  Future<T> executeWithLogger<T>(
      Future<T> Function(Database sqflitedatabase) execution) async {
    try {
      return await execution(database);
    } on DatabaseException catch (e) {
      getErrorMessage(databaseException: e);
      rethrow;
    } catch (e) {
      LogHelper.shared.errorPrint("Sqflite Error: Unknown");
      rethrow;
    }
  }
}
