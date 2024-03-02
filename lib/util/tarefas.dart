import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Tarefas extends StatelessWidget {
  final String tarefanome;
  final bool completo;
  Function(bool?)? onChanged;
  Function(BuildContext)? deletarTarefa;

  Tarefas(
      {super.key,
      required this.tarefanome,
      required this.completo,
      required this.onChanged,
      required this.deletarTarefa});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deletarTarefa,
              icon: Icons.delete,
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              // caixa de marcação
              Checkbox(
                value: completo,
                onChanged: onChanged,
                activeColor: Colors.indigo.shade900,
              ),
              // nome da tarefa
              Text(
                tarefanome,
                style: GoogleFonts.silkscreen(
                    decoration: completo
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
