import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SobreMim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Sobre o App de Tarefas',
          style: GoogleFonts.silkscreen(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              " O Tarefa APP é uma aplicação prática desenvolvida como parte do Trabalho de Conclusão do Curso de Desenvolvimento de Aplicações Móveis no âmbito do Projeto Tomorrow, na Universidade Federal da Bahia (UFBA).",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Recursos: ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('• Lista de tarefas personalizáveis.',  style: TextStyle(fontSize: 18) ),
            Text('• Marcação rápida de tarefas concluídas.', style: TextStyle(fontSize: 18)),
            Text('• Navegação intuitiva para facilitar o uso.', style: TextStyle(fontSize: 18) ),
            SizedBox(height: 16),
            Text(
              'Objetivo:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
             Text('Simplificar a organização diária, proporcionando uma maneira eficiente de gerenciar tarefas.', style: TextStyle(fontSize: 18),),
              SizedBox(height: 16),
              Text(
               'Tecnologias:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Desenvolvido com Flutter para criar interfaces nativas e Hive para armazenamento eficiente de dados.', style: TextStyle(fontSize: 18),),
               SizedBox(height: 16),
               Text(
                'Equipe:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Nome da equipe ou colaboradores', style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}
