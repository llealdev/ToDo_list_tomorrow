class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Corrida matinal.', isDone: true),
      ToDo(id: '02', todoText: 'Fazer mercado.', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Checar Emails',
      ),
      ToDo(id: '04', todoText: 'Reunião do grupo.'),
      ToDo(
        id: '05',
        todoText: 'Trabalhar nos apps mobile por 2h.',
      ),
      ToDo(id: '06', todoText: 'Jantar com Marcia.'),
    ];
  }
}
