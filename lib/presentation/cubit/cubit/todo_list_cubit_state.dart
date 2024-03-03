part of 'todo_list_cubit_cubit.dart';

@freezed
class TodoListCubitState with _$TodoListCubitState {
  const factory TodoListCubitState.initial({
        ToDoListModel? toDoListModel,
        @Default(CubitState.loading) CubitState? state
  }) = _Initial;

}


enum CubitState{
  loading,
  success,
  notFound
}