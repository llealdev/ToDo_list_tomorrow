import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tarefas/data/database.dart';
import 'package:tarefas/sobre_mim.dart';
import 'package:tarefas/util/caixa.dart';
import 'package:tarefas/util/tarefas.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  // ignore: unused_field
  final _controller = TextEditingController();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //chamando a caixa
  final _caixa = Hive.box('caixa');

  //Controlador de texto
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    //cria os dados iniciais
    if (_caixa.get('tarefasLista') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
  }

  //Lista de tarefas
  Database db = Database();

  //Macadorchange
  void marcadoChanged(bool? value, int index) {
    setState(() {
      db.tarefasLista[index][1] = !db.tarefasLista[index][1];
    });
    db.updateData();
  }

  //Salvar tarefa
  void salvarTarefa() {
    setState(() {
      db.tarefasLista.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.pop(context);
    db.updateData();
  }

  //criar tarefas
  void criarTarefa() {
    showDialog(
        context: context,
        builder: (context) {
          return Caixa(
            controller: _controller,
            onSave: salvarTarefa,
            onCancel: () => Navigator.pop(context),
          );
        });
  }

  //deletar tarefas
  void deletar(int index) {
    setState(() {
      db.tarefasLista.removeAt(index);
    });
    db.updateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
           return;
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline_rounded),
            onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SobreMim()),
            );
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        title: Text(
          'Tarefas',
          style: GoogleFonts.silkscreen(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigoAccent,
        onPressed: criarTarefa,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.builder(
          itemCount: db.tarefasLista.length,
          itemBuilder: (context, index) {
            return Tarefas(
              tarefanome: db.tarefasLista[index][0],
              completo: db.tarefasLista[index][1],
              onChanged: (value) => marcadoChanged(value, index),
              deletarTarefa: (context) => deletar(index),
            );
          },
        ),
        ]
      ),
    );
  }
}
