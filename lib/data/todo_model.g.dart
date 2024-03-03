// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todos _$TodosFromJson(Map<String, dynamic> json) => Todos(
      id: json['id'] as int?,
      todo: json['todo'] as String?,
      completed: json['completed'] as bool?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$TodosToJson(Todos instance) => <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
