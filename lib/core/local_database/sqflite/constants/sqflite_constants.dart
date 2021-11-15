import '../info/database_creator_info.dart';
import '../info/database_info.dart';


class SqfliteConstants {
  SqfliteConstants._();

  static var shared = SqfliteConstants._();

  // static var categoryTable = "CategoryTable";
  // static var transactionTable = "TransactionTable";
  // static var regularTransactionTable = "RegularTransactionTable";

  static var defaultDatabase = SqfliteDatabaseInfo(
    databaseName: "userDatabase",
    databaseVersion: 1,
  );

  static var defaultDatabaseCreatorInfo = SqfliteDatabaseCreatorInfo(
    databaseInfo: defaultDatabase,
    createDatabase: (database, version) async {
     
/*
     await  database.execute(
          """CREATE TABLE IF NOT EXISTS ${SqfliteConstants.categoryTable} (
            ${CategoryModel.idKey} $id,
            ${CategoryModel.colorKey} $text $notNullData,
            ${CategoryModel.iconKey} $integer $notNullData,
            ${CategoryModel.nameKey} $text $notNullData,
            ${CategoryModel.typeKey} $text $notNullData,
            ${CategoryModel.createdAtKey} $text $notNullData,
            ${CategoryModel.expiredAtKey} $text
          )""");
*/

    },
    initDatabase: () async {
      //check database every time this worked
    },
    closeDatabase: () async {
      //do it when database close
    },
  );

  static var not = "NOT";
  static var like = "LIKE";

  //TYPES
  static var text = "TEXT";
  static var integer = "INTEGER";
  static var blob = "BLOB";
  static var real = "REAL";
  static var varChar = "VARCHAR(255)";
  static var bigInt = "BIGINT";
  static var id = "INTEGER PRIMARY KEY AUTOINCREMENT";
  static var nullData = "NULL";
  static var notNullData = "NOT NULL";

  //ACTIONS
  static var insertInto = "INSERT INTO";
  static var update = "UPDATE";
  static var delete = "DELETE";
}
