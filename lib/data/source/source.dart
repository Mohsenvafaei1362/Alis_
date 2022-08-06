// import 'package:hive_flutter/adapters.dart';

abstract class DataSource<T> {
  Future<List<T>> getAll({String searchKeyword});
  Future<T> findById(dynamic id);
  Future<void> deleteAll();
  Future<void> delete(T data);
  Future<void> deleteById(dynamic id);
  Future<T> createorupdate(T data);
}

// @HiveType(typeId: 0)
// class UserInfo extends HiveObject {
//   @HiveField(0)
//   int id = 0;
//   @HiveField(1)
//   String fName = '';
//   @HiveField(2)
//   String lName = '';
//   @HiveField(3)
//   String userName = '';
//   @HiveField(4)
//   int password = 0;
//   @HiveField(5)
//   String email = '';
//   @HiveField(6)
//   int phone = 0;
//   @HiveField(7)
//   int code = 0;
//   @HiveField(8)
//   int rank = 0;
//   @HiveField(9)
//   int score = 0;
//   @HiveField(10)
//   bool isLogin = false;
//   @HiveField(11)
//   Priority priority = Priority.low;
// }

// enum Priority { low, normal, high }
