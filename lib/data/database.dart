import 'package:hive_flutter/hive_flutter.dart';

class Database{
  List tarefasLista = [];

  final _caixa = Hive.box('caixa');

  void createInitialData(){
    tarefasLista = [
      ['Estudar', false],
      ['Fazer exercícios', false],
      ['Ler', false],
      ['Fazer compras', false],
      ['Lavar o carro', false],
      ['Passear com o cachorro', false],
      ['Fazer almoço', false],
      ['Fazer jantar', false],
      ['Fazer café da manhã', false],
      ['Fazer café da tarde', false],
    ];
  }

  void loadData(){
      tarefasLista = _caixa.get('tarefasLista');
  }

  void updateData(){
    _caixa.put('tarefasLista', tarefasLista);
  }
}