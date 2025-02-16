import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle='';

    return Container(
      padding: EdgeInsets.all(20.00),
        
      decoration: const BoxDecoration(
        color:Colors.white,
        borderRadius:  BorderRadius.only(
          topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
        )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
             newTaskTitle =newText;
            },
          ),
          TextButton(
              child: Text('Add',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
            ),
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
