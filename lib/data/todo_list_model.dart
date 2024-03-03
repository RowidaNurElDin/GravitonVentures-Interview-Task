import 'package:interview/data/todo_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'todo_list_model.g.dart';

@JsonSerializable()
class ToDoListModel{
  List<Todos>? todos;
  int? total;
  int? skip;
  int? limit;

  ToDoListModel({this.todos, this.total, this.skip, this.limit});

  Map<String, dynamic> toJson() => _$ToDoListModelToJson(this);
  factory ToDoListModel.fromJson(Map<String, dynamic> json) => _$ToDoListModelFromJson(json);
}
