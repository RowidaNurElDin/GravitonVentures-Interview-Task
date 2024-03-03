import 'package:json_annotation/json_annotation.dart';
part 'todo_model.g.dart';

@JsonSerializable()
class Todos {
  int? id;
  String? todo;
  bool? completed;
  int? userId;

  Todos({this.id, this.todo, this.completed, this.userId});


  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);
  Map<String, dynamic> toJson() => _$TodosToJson(this);

}