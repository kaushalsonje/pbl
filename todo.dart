class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning exersize', isDone: true),
      ToDo(id: '02', todoText: 'run instagram', isDone: true),
      ToDo(
        id: '03',
        todoText: 'charge the phone',
      ),
      ToDo(id: '04', todoText: 'get ready for college'),
      ToDo(
        id: '05',
        todoText: 'bunk the lectures',
      ),
      ToDo(
        id: '06',
        todoText: 'play lodo in lectures',
      ),
    ];
  }
}
