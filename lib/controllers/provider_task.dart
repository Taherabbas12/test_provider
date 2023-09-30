import 'package:flutter/material.dart';

import '../models/model_task.dart';

class ProviderTask extends ChangeNotifier {
  List<ModelTask> dataTask = [
    ModelTask(isComplete: false, nameTask: 'AA', title: 'T1'),
    ModelTask(isComplete: false, nameTask: 'AA', title: 'T2'),
  ];

  void addTask(ModelTask newTask) {
    dataTask.add(newTask);
    notifyListeners();
  }
}
