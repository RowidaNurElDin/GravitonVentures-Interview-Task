import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/presentation/cubit/cubit/todo_list_cubit_cubit.dart';
import 'package:interview/presentation/main_todo_list_screen.dart';

void main() {
  runApp(const TodoList());
}

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocProvider(
        create: (context) => TodoListCubitCubit(),
        child: const MainTodoListScreen(),
      ),
    );
  }
}
