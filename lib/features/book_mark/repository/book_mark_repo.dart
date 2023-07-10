import 'package:dict_app/core/storage/local_database.dart';

abstract class BookMarkRepositoryInterface {
  getAllBookMarks();
  deleteBookMarkByID(String iD);
  deletBookMarkByObject(dynamic bookMarkObject);
  filterBookMarkByName(String wordName);
  addToBookMark(dynamic bookMarkObject);
}

class BookMarkRepository implements BookMarkRepositoryInterface {
  WLocalDatabase wLocalDatabase;
  BookMarkRepository(this.wLocalDatabase);
  @override
  addToBookMark(bookMarkObject) {
    throw UnimplementedError();
  }

  @override
  deletBookMarkByObject(bookMarkObject) {
    throw UnimplementedError();
  }

  @override
  deleteBookMarkByID(String iD) {
    throw UnimplementedError();
  }

  @override
  filterBookMarkByName(String wordName) {
    throw UnimplementedError();
  }

  @override
  getAllBookMarks() {
    throw UnimplementedError();
  }
}
