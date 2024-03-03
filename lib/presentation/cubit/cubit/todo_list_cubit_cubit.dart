import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview/core/helpers.dart';
import 'package:interview/data/todo_list_model.dart';

part 'todo_list_cubit_state.dart';
part 'todo_list_cubit_cubit.freezed.dart';

class TodoListCubitCubit extends Cubit<TodoListCubitState> {
  ToDoListModel? toDoList;
  TodoListCubitCubit() : super(const TodoListCubitState.initial()){
      readTodosFromJsonFile().then((value) {
        toDoList = value;
     emit( TodoListCubitState.initial(
       toDoListModel: value,
       state: CubitState.success
     ));
   });
  }

  TextEditingController textEditingController = TextEditingController();

   Future<ToDoListModel?> readTodosFromJsonFile() async{
    return ToDoListModel.fromJson(await loadJsonFromAssets('assets/todos.json'));
  }

  void returnSearchList(String searchText) {
    emit(state.copyWith(state: CubitState.loading));
    ToDoListModel tmpList = ToDoListModel(
         todos: toDoList!.todos!.where((element) => element.id!.toString().contains(searchText)).toList(),
         total: toDoList!.total,
         skip: toDoList!.skip,
         limit: toDoList!.limit
     );
     emit(state.copyWith(
      state: CubitState.success,
      toDoListModel: tmpList));
  }

}
