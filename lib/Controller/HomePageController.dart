import 'package:flutter/cupertino.dart';

class HomePageController with ChangeNotifier{
    List<String> thingsToDoList = [];

  addToDo(String todo){
    thingsToDoList.add(todo);
  }

  List<String> getThingsToDo(){
    return thingsToDoList;
  }
  int getTodoCount(){
    return thingsToDoList.length;
  }
}