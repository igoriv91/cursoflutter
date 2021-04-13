import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var indexQuestion = 0;
  int pontuacaoTotal = 0;

  final List<Map<String, dynamic>> listQuestions = const [
    {
      'text': 'Pergunta',
      'answer': [
        {'texto': 'Resposta 1', 'nota': 1},
        {'texto': 'Resposta 2', 'nota': 2},
        {'texto': 'Resposta 3', 'nota': 3},
      ]
    },
    {
      'text': 'Outra Pergunta',
      'answer': [
        {'texto': 'Outra Resposta 1', 'nota': 1},
        {'texto': 'Outra Resposta 2', 'nota': 2},
        {'texto': 'Outra Resposta 3', 'nota': 3},
      ]
    },
    {
      'text': 'terceira Pergunta',
      'answer': [
        {'texto': 'terceira Resposta 1', 'nota': 1},
        {'texto': 'terceira Resposta 2', 'nota': 2},
        {'texto': 'terceira Resposta 3', 'nota': 3},
        {'texto': 'terceira Resposta 4', 'nota': 4},
      ]
    }
  ];

  void responder(int pontuacao) {
    setState(() {
      if (haveQuestion) {
        indexQuestion++;
        pontuacaoTotal += pontuacao;
      }
    });
  }

  void reinicarQuestionario() {
    setState(() {
      indexQuestion = 0;
      pontuacaoTotal = 0;
    });
  }

  bool get haveQuestion {
    return indexQuestion < listQuestions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergunta'),
        ),
        body: haveQuestion
            ? Questionario(
                listQuestions: listQuestions,
                indexQuestion: indexQuestion,
                responder: responder)
            : Resultado(pontuacaoTotal, reinicarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
