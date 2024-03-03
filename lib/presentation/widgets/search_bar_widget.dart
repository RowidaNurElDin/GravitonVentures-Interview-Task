import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview/presentation/cubit/cubit/todo_list_cubit_cubit.dart';


class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListCubitCubit, TodoListCubitState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value){
            
            context.read<TodoListCubitCubit>().returnSearchList(value);
            //setState(() {});
          },
          controller: context.read<TodoListCubitCubit>().textEditingController,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search by ID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.blue[900]!, width: 1),

                )
            )
        );
      },
    );
  }
}
