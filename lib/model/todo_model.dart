class Todo {
  String? id;
  String? todoText;
  bool isDone;
  Todo({required this.id, required this.todoText, this.isDone = false});
  static List<Todo> todoList() {
    return [
      Todo(id: '1', todoText: 'Good Morning Exercise', isDone: true),
      Todo(id: '2', todoText: 'Breakfast Time', isDone: true),
      Todo(id: '3', todoText: 'Study Time'),
      Todo(id: '4', todoText: 'Medicine Time'),
      Todo(id: '5', todoText: 'Sleep Time')
    ];
  }
}
