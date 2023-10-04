import 'package:flutter/material.dart';
import 'package:todo_app/model/todo_model.dart';

class TodoItems extends StatelessWidget {
  final Todo todo;
  final onTodoChange;
  final onDeleteItem;
  TodoItems({
    super.key,
    required this.todo,
    required this.onTodoChange,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Expanded(
        child: ListTile(
          onTap: () {
            onTodoChange(todo);
          },
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.grey.shade900,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.red,
            child: IconButton(
                onPressed: () {
                  onDeleteItem(todo.id);
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}
