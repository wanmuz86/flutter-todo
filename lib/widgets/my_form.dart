
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  // You create Controlller to retrieve the value from the inputs
  var nameController = TextEditingController();
  var ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    // Use the documentation - 
    /// Create rows or columN? - From top to the bottom
    //create two forms
    // What is your name?
    // hOw old are you?
    // a buton
    // Add onclick
    return Scaffold(appBar: 
    AppBar(title: 
    Text("My Form"),),
    body: Container(
      padding: EdgeInsets.all(10.0),
      child: 
    // change the color and the font size
    Center(
      child: Column(children: <Widget>[
        Text("My Form", style: TextStyle(fontSize: 32, 
    color: Color.fromARGB(255, 255, 128, 20)),),
    TextField(
      controller: nameController,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Enter your name'
    )
      ),
      TextField(
        controller: ageController,
        decoration: InputDecoration(border: InputBorder.none,
        hintText: 'Enter your age'
        ),
      ),
      RaisedButton(child: Text("Press Me!"),
      onPressed: (){
        print("Hello ${nameController.text} you are ${ageController.text} years old");
      },)
      ]
      )
    )
    )
    );
/// Once everything is ok, move this to a new file, call it my_form.dart
  }
}