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
        onCreate: (db, version) async {
          await db.execute(
            'CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY AUTOINCREMENT, full_name TEXT UNIQUE, phone TEXT, email TEXT)',
          );

          await db.execute(
            'CREATE TABLE IF NOT EXISTS review (id INTEGER PRIMARY KEY AUTOINCREMENT, rating INTEGER, review TEXT, createdAt TEXT, user_id INTEGER, review_images BLOB, product_id INTEGER)',
          );
        },
      );

      await _db?.insert(
          'user',
          {
            'full_name': "Erin Mango",
            "phone": "+38970317455",
            "email": "erin@gmail.com"
          },
          conflictAlgorithm: ConflictAlgorithm.ignore);
    }
  }

  Future<List<Map<String, dynamic>>?> getReviewsByProductId(
      int productId) async {
    return await _db?.rawQuery(
        'SELECT r.id, r.review, r.rating, r.createdAt, r.user_id, u.full_name, u.phone, u.email FROM review as r Join user as u ON r.user_id = u.id where r.product_id = $productId ORDER BY r.id desc;');
  }

  Future<List<Map<String, dynamic>>?> getReviewByReviewId(int reviewId) async {
    return await _db?.rawQuery(
        'SELECT r.id, r.review, r.rating, r.createdAt, r.user_id, u.full_name, u.phone, u.email FROM review as r Join user as u ON r.user_id = u.id where r.id = $reviewId;');
  }

  Future<int?> addReview(Map<String, dynamic> review) async {
    return await _db?.insert('review', review);
  }
}
