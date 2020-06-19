import 'package:flutter/material.dart';
import 'package:form_example/models/todo.dart';

class DetailItem extends StatelessWidget {
  final Todo todo;
  DetailItem({this.todo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page"),),
      body: Container(child: 
      Center(child:
      Column(
        // Main Axis Alignment - column (top to bottom)
        // Cross Axis Alignment - column (left to right)
        // Double check and if you have time, style a little bit your font
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(todo.name, style: TextStyle(color: Colors.blue, fontSize: 30),),
        SizedBox(height: 10,),
        Text(todo.description, style: TextStyle(fontSize: 20),),
        SizedBox(height: 10,),
        Text(todo.place)
      ],)
      )
      ,),
      
    );
  }
}