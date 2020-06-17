// Create a list of to do items (similar to your React project)
// A todo item will have name - place - description, completed
// Show it inside a ListView widgets
import 'package:flutter/material.dart';
import 'package:form_example/models/todo.dart';
import 'package:form_example/widgets/details.dart';

class TodoList extends StatelessWidget {
List<Todo> todoList = [
Todo(name: "Revise last week exercise",
place: "At your home",
description:"Button, ListView",
completed: false),
Todo(name:"Buy burger",
place:"Dengkil",
description: "Oblong special",
completed: false),
Todo(name: "Pay salary",
place:"Office",
description: "before 25th of the month",
completed: false)

];
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(appBar: AppBar(title: Text("To Do"),),
    body:  ListView.separated(itemBuilder: (BuildContext context,int index){
// FInd a widget that represent a row of list with title, subtitle, leading, trailing
// Create a new page, when the row is pressed, open the new page,
// show all the infos there
return Card(child: ListTile(title: 
Text(todoList[index].name),
subtitle: Text(todoList[index].place),
onTap: (){
  Navigator.push(context, 
  MaterialPageRoute(builder: (context)=>DetailItem()));
},
),);
    }, 
    separatorBuilder: (BuildContext context,int index)
    => const Divider(), 
    itemCount: todoList.length)
    
  
    );
}
}