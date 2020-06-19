
import 'package:flutter/material.dart';
import 'package:form_example/models/todo.dart';
class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  // You create Controlller to retrieve the value from the inputs
  var nameController = TextEditingController();
  var descController = TextEditingController();
  var placeController = TextEditingController();
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
        Text("Add new Item", style: TextStyle(fontSize: 32, 
    color: Color.fromARGB(255, 255, 128, 20)),),
    TextField(
      controller: nameController,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Enter item Name'
    )
      ),
      TextField(
        controller: descController,
        decoration: InputDecoration(border: InputBorder.none,
        hintText: 'Enter item Description'
        ),
      ),
      TextField(
        controller: placeController,
        decoration: InputDecoration(border: InputBorder.none,
        hintText: 'Enter item Place'
        ),
      ),
      RaisedButton(child: Text("Press Me!"),
      onPressed: (){
        // Navigator.pop(context); to close the page
        // If you want to pass item, you pass it as second paremeter as an object
        var newItem = Todo(name:nameController.text, 
        description: descController.text, 
        place: placeController.text);
        Navigator.pop(context, {'item':newItem});
           },)
      ]
      )
    )
    )
    );
/// Once everything is ok, move this to a new file, call it my_form.dart
  }
}