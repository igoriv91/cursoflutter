import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, dynamic>> listQuestions;
  final int indexQuestion;
  final void Function(int) responder;

  Questionario(
      {@required this.listQuestions,
      @required this.indexQuestion,
      @required this.responder});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(listQuestions[indexQuestion]['text']),
        ...(listQuestions[indexQuestion]['answer']
                as List<Map<String, dynamic>>)
            .map((mapResposta) {
          return Resposta(
              mapResposta['texto'], () => responder(mapResposta['nota']));
        }).toList(),
      ],
    );
  }
}
