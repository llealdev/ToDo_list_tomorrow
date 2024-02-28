import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarefas/util/botoes.dart';

class Caixa extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  Caixa(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Adicionar Tarefa',
        textAlign: TextAlign.center,
        style: GoogleFonts.silkscreen(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal),
      ),
      backgroundColor: Colors.blue.shade300,
      content: Container(
        height: 120,
        child: Column(
          children: [
            //Entrada de texto
            TextField(
              controller: controller,
              textAlign: TextAlign.center,
              style: GoogleFonts.silkscreen(fontStyle: FontStyle.normal),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Nome da tarefa',
              ),
            ),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Botão de cancelar
                  Botoes(
                    icon: Icon(Icons.arrow_back),
                    onPressed: onCancel,
                  ),
                  //Botão de adicionar
                  Botoes(
                    icon: Icon(Icons.add),
                    onPressed: onSave,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
