import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_flutter_ravi/Controller/HomePageController.dart';
import 'package:todo_flutter_ravi/Screens/CreateTodo.dart';
import 'package:todo_flutter_ravi/Services/RouteManager.dart';

class HomePage extends StatefulWidget {
 HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController homePageController = HomePageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: ()  async {
           
          //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateTodo())).then((value) {
          //     homePageController.addToDo(value);
          //     print(homePageController.getThingsToDo());
          //  } 
           
           
          //  );
          dynamic value = await  CustomRouteManager.navigateTo(screen: CreateTodo(), context: context);
           homePageController.addToDo(value);
            print(homePageController.getThingsToDo());
            setState(() {
              
            });
           
          
        },
        backgroundColor: Colors.amber,
        ),
        backgroundColor:  Colors.lightBlue,
        appBar: AppBar(title:Text("TODO APP"),centerTitle: true, ),

        body: Container(
          child: ListView.builder(
            itemCount: homePageController.getTodoCount(),
            itemBuilder: ((context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: Colors.amber,
                child: Text(homePageController.thingsToDoList[index]),
              ),
            );
          })),
        ),
        
      ),
    );
  }
}