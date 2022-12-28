import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_flutter_ravi/Screens/HomePage.dart';

class CreateTodo extends StatefulWidget {
  
  @override
  State<CreateTodo> createState() => _CreateTodoState();
}

class _CreateTodoState extends State<CreateTodo> {
 TextEditingController todoTitleController = TextEditingController();

 @override
  void dispose() {
    // TODO: implement dispose
    todoTitleController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: todoTitleController,
                  decoration: InputDecoration(hintText: "Enter TODO"),
              ),
              SizedBox(height: deviceSize.height *0.03,),
              InkWell(
                onTap: (){
                Navigator.pop(context,todoTitleController.text);
                
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                  child: Text("Submit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}