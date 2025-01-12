import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    // Get the path to the database
    String path = join(await getDatabasesPath(), 'library_manage.db');
    return openDatabase(
      path,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE Livre(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            titre TEXT,
            isbn TEXT,
            dateSortie TEXT,
            photo TEXT,
            auteurId INTEGER,
            FOREIGN KEY (auteurId) REFERENCES Auteur(id)
          );
        ''');
        db.execute('''
          CREATE TABLE Auteur(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nom TEXT,
            prenom TEXT,
            tel TEXT
          );
        ''');
      },
      version: 1,
    );
  }

  // CRUD operations for Livre (Book)

  Future<int> insertLivre(Map<String, dynamic> livre) async {
    Database db = await database;
    return await db.insert('Livre', livre);
  }

  Future<int> updateLivre(Map<String, dynamic> livre) async {
    Database db = await database;
    return await db.update(
      'Livre',
      livre,
      where: 'id = ?',
      whereArgs: [livre['id']],
    );
  }

  Future<int> deleteLivre(int id) async {
    Database db = await database;
    return await db.delete(
      'Livre',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<Map<String, dynamic>>> getLivres() async {
    Database db = await database;
    return await db.query('Livre');
  }

  // CRUD operations for Auteur (Author)

  Future<int> insertAuteur(Map<String, dynamic> auteur) async {
    Database db = await database;
    return await db.insert('Auteur', auteur);
  }

  Future<int> updateAuteur(Map<String, dynamic> auteur) async {
    Database db = await database;
    return await db.update(
      'Auteur',
      auteur,
      where: 'id = ?',
      whereArgs: [auteur['id']],
    );
  }

  Future<int> deleteAuteur(int id) async {
    Database db = await database;
    return await db.delete(
      'Auteur',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<Map<String, dynamic>>> getAuteurs() async {
    Database db = await database;
    return await db.query('Auteur');
  }
}
