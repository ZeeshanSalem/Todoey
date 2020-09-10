import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task_data.dart';
import 'package:todoey_flutter/model/tasks.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },

            ),
            FlatButton(
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text("ADD",
                style: TextStyle(
                  color: Colors.white
                ),),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
