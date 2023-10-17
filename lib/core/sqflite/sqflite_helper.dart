import 'package:sqflite/sqflite.dart';

class SqfHelper {
  static Database? _db;

  final String dbName;

  SqfHelper({required this.dbName});

  Future<void> open() async {
    if (_db == null) {
      var databasesPath = await getDatabasesPath();
      String path = "$databasesPath $dbName";

      _db = await openDatabase(
        path,
        version: 1,
      );
    }
  }

  Future<List<Map<String, dynamic>>?> queryByProductId(int productId) async {
    return await _db?.rawQuery(
        'SELECT r.id, r.review, r.rating, r.createdAt, r.user_id, u.full_name, u.phone, u.email FROM review as r Join user as u ON r.user_id = u.id where r.product_id = $productId;');
  }
}
