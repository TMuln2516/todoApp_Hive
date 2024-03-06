import 'package:hive_flutter/hive_flutter.dart';

class ToDoData {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  //method when call if first time user use app
  void createInitialData() {
    toDoList = [
      ["Add a few Task ", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
