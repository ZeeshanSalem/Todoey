import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked ;
  final String listTitle ;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TasksTile({this.isChecked, this.listTitle, this.checkBoxCallBack, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(listTitle,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged:checkBoxCallBack,
      ),
    );
  }
}

