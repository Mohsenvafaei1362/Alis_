// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:alis/data/source/source.dart';

class HiveDataSource<T> implements DataSource<T> {
  // final Box<T> box;
  // HiveDataSource({
  //   required this.box,
  // });

  @override
  Future<T> createorupdate(T data) {
    // TODO: implement createorupdate
    throw UnimplementedError();
  }

  @override
  Future<void> delete(T data) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAll() {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<void> deleteById(id) {
    // TODO: implement deleteById
    throw UnimplementedError();
  }

  @override
  Future<T> findById(id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<List<T>> getAll({String searchKeyword = ''}) {
    // TODO: implement getAll
    throw UnimplementedError();
  }
}
