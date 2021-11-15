import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDatabaseInfo {
  String databaseName;
  int databaseVersion;

  SqfliteDatabaseInfo({
    required this.databaseName,
    required this.databaseVersion,
  });
}
