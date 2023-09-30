import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/provider_task.dart';
import '../models/model_task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var taskProvidr = Provider.of<ProviderTask>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      body: ListView.builder(
        itemCount: taskProvidr.dataTask.length,
        itemBuilder: (context, index) {
          var task = taskProvidr.dataTask[index];
          return ListTile(
            title: Text(task.nameTask),
            subtitle: Text(task.title),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          taskProvidr.addTask(
              ModelTask(title: 'A12', nameTask: 'Ali', isComplete: false));
          print(taskProvidr.dataTask.length);
          print("_____________");
        },
        child:const Icon(Icons.add),
      ),
    );
  }
}
