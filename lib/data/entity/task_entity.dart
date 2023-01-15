import 'package:equatable/equatable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:todogo_app/domain/model/task.dart';

@Entity()
class TaskEntity extends Equatable implements Task {
  const TaskEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.dateTime,
      required this.isCompleted});

  @override
  @Id()
  final int id;

  @override
  final String title;

  @override
  final String description;

  @override
  @Property(type: PropertyType.date)
  final DateTime dateTime;

  @override
  final bool isCompleted;

  @override
  List<Object?> get props => [id];

  set id(int inputId) {
    id = inputId;
  }
}
