import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/cart_model.dart';

class GuitarDatabase {
  static final GuitarDatabase instance = GuitarDatabase.init();

  static Database? _database;

  GuitarDatabase.init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('guitar.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final intType = 'INTEGER NOT NULL';
    final textType = 'TEXT NOT NULL';
    final numType = 'REAL NOT NULL';

    // creating table
    await db.execute('''
    CREATE TABLE ${CartField.favorite}(
    ${CartField.id} $intType,
    ${CartField.title} $textType,
    ${CartField.price} $textType,
    ${CartField.images} $textType
    )
    ''');
  }

  Future<int> create(CartModel model) async {
    Database db = await instance.database;
    final query = await db.insert(CartField.favorite, model.toMap());

    return query;
  }

  Future<List<CartModel>> readAll() async {
    Database db = await instance.database;

    final data = await db.query(CartField.favorite);
    List<CartModel> result = data.map((e) => CartModel.fromMap(e)).toList();

    return result;
  }

  Future<bool> read(num? id) async {
    final db = await instance.database;

    final maps = await db.query(
      CartField.favorite,
      columns: CartField.values,
      where: '${CartField.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  delete(num? id) async {
    Database db = await instance.database;

    await db.delete(CartField.favorite,
        where: "${CartField.id} = ?", whereArgs: [id]);
  }
}
