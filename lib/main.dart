import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'views/homepage.dart';

void main() async {
  //inicializa o BD
  await Hive.initFlutter();

  //abre a caixa
  // ignore: unused_local_variable
  var box = await Hive.openBox('caixa');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo),
      title: 'Tarefas',
      home: HomePage(),
    );
  }
}
