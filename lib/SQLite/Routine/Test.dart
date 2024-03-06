import "package:flutter/cupertino.dart";
import "package:flutter/foundation.dart";
import "package:sqflite/sqflite.dart" as sql;




class Task {
  final int id;
  // name < 70;
  final String taskName;
  final Icon taskIcon;
  final int timeStart;
  final int timeEnd;
  final int colorId;
  final String subTasks;

  Task({
    required this.id,
    required this.taskName,
    required this.taskIcon,
    required this.timeStart,
    required this.timeEnd,
    required this.colorId,
    required this.subTasks,
  });
}




class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      student_id TEXT,
      student_name TEXT,
      student_class_name TEXT,
      student_major TEXT,
      createAT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )
    """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'dbsinhvien.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  static Future<int> createItem(String studentID, String studentName, String studentClassName, String studentMajor ) async {
    final db = await SQLHelper.db();
    final data = {'student_id':studentID, 'student_name':studentName, 'student_class_name': studentClassName, 'student_major':studentMajor };
    final id = await db.insert('items', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLHelper.db();
    return db.query('items', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLHelper.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateItem(int id, String studentID, String studentName, String studentClassName, String studentMajor) async {
    final db = await SQLHelper.db();
    final data = {
      'student_id': studentID,
      'student_name': studentName,
      'student_class_name': studentClassName,
      'student_major': studentMajor,
      'createAt' : DateTime.now().toString(),
    };
    final result = await db.update("items", data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete('items', where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Co loi khi xoa item: $err");
    }
  }


  static Future<List<int>> getStudentIdsByName(String studentName) async {
    final db = await SQLHelper.db();

    List<Map<String, dynamic>> result = await db.query(
      'items',
      columns: ['id'],
      where: 'student_name = ?',
      whereArgs: [studentName],
    );

    List<int> studentIds = result.map((map) => map['id'] as int).toList();
    return studentIds;
  }

}