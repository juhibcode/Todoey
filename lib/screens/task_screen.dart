import 'package:flutter/material.dart';
import 'task_list.dart';
import 'package:todoey/screens/addtaskscreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton:  FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context)=>
              AddTaskScreen());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:const EdgeInsets.only(top: 60,left:30.0,right: 30.0,bottom: 30.0),
            child:  Column(
              children: [
                CircleAvatar(
                    child: Icon(
                        Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                Text('Todoye',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.00,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),)
              ),
              child:TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
