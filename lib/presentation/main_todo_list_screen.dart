import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/core/helpers.dart';
import 'package:interview/data/todo_list_model.dart';
import 'package:interview/main.dart';
import 'package:interview/presentation/cubit/cubit/todo_list_cubit_cubit.dart';
import 'package:interview/presentation/widgets/search_bar_widget.dart';
import 'package:interview/presentation/widgets/todo_list_widget.dart';

class MainTodoListScreen extends StatelessWidget {
   const MainTodoListScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TodoListCubitCubit, TodoListCubitState>(
          builder: (context, state) {
            if(state.toDoListModel == null){
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
              children: [
                const SearchBarWidget(),
                const SizedBox(height: 20,),
                TodoListWidget(todoList: state.toDoListModel!)
              ],
            );
          },
        ),
      ),
    );
  }
}
