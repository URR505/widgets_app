import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:english_words/english_words.dart';

class FavoriteWordsDatabase {
  static final FavoriteWordsDatabase instance = FavoriteWordsDatabase._init();
  static Database? _database;

  FavoriteWordsDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('wordpairs.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE favorites(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first TEXT NOT NULL,
        second TEXT NOT NULL
      )
    ''');
  }

  Future<void> insertFavorite(WordPair pair) async {
    final db = await database;
    await db.insert(
      'favorites',
      {
        'first': pair.first,
        'second': pair.second,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteFavorite(WordPair pair) async {
    final db = await database;
    await db.delete(
      'favorites',
      where: 'first = ? AND second = ?',
      whereArgs: [pair.first, pair.second],
    );
  }

  Future<List<WordPair>> getFavorites() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('favorites');

    return List.generate(maps.length, (i) {
      return WordPair(
        maps[i]['first'] as String,
        maps[i]['second'] as String,
      );
    });
  }

  Future<bool> isFavorite(WordPair pair) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'favorites',
      where: 'first = ? AND second = ?',
      whereArgs: [pair.first, pair.second],
    );
    return maps.isNotEmpty;
  }

  Future close() async {
    final db = await database;
    db.close();
  }
}
