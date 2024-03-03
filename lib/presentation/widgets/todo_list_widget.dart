import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/data/todo_list_model.dart';
import 'package:interview/presentation/cubit/cubit/todo_list_cubit_cubit.dart';


class TodoListWidget extends StatelessWidget {
  final ToDoListModel todoList;

  const TodoListWidget({super.key, required this.todoList});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoListCubitCubit, TodoListCubitState>(
      listener: (context, state) {
        
      
      },
      builder: (context, state) {
        if(state.state == CubitState.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        return Expanded(
          child: ListView.separated(
            itemCount: todoList.todos!.length,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemBuilder: (context, index) {

              return Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "${todoList.todos![index].id!} . ${todoList.todos![index]
                          .todo!}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900]
                      ),
                    ),
                  ));
            },
            shrinkWrap: true,

          ),
        );
      },
    );
  }
}
