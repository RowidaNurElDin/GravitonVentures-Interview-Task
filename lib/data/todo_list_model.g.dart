// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToDoListModel _$ToDoListModelFromJson(Map<String, dynamic> json) =>
    ToDoListModel(
      todos: (json['todos'] as List<dynamic>?)
          ?.map((e) => Todos.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      skip: json['skip'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$ToDoListModelToJson(ToDoListModel instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
