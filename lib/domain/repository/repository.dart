import 'package:todogo_app/domain/model/task.dart';

abstract class Repository {
  Future<List<Task>> getAllTasks();
  Future<int> createTask();
}