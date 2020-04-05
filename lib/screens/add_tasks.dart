import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  AddTasks(this.addTaskCallBack);
  final Function addTaskCallBack;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 35,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: myController,
              autofocus: true,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: () {
                addTaskCallBack(newTaskTitle);
//                print(newTaskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
