import 'package:equatable/equatable.dart';
import 'package:todogo_app/domain/model/task.dart';

class TaskEntity extends Equatable implements Task {
  const TaskEntity(
      this.id, this.title, this.description, this.dateTime, this.isCompleted);

  @override
  final int id;

  @override
  final String title;

  @override
  final String description;

  @override
  final DateTime dateTime;

  @override
  final bool isCompleted;

  @override
  List<Object?> get props => [id];
}
