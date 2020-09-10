import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/model/task_data.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.task[index];
              return TasksTile(
                  isChecked: task.isDone,
                  listTitle: task.name,
                  checkBoxCallBack: (checkBoxState) {
                    taskData.updateTask(task);
                  },
                  longPressCallBack: (){
                    taskData.removeTask(task);
              },
                  );
            });
      },

    );
  }
}