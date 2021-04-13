import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get textoResultado {
    if (pontuacao <= 3) {
      return 'Você é Horrível!';
    } else if (pontuacao <= 6) {
      return 'Dá pra melhorar';
    } else if (pontuacao <= 9) {
      return 'Você é bom nisso';
    } else {
      return 'Pontuação máxima';
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          textoResultado,
          style: TextStyle(fontSize: 30),
        )),
        ElevatedButton(
          onPressed: reiniciarQuestionario,
          child: Text('Reiniciar'),
        )
      ],
    );
  }
}
