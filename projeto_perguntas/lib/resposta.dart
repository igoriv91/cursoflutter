import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() onSelecao;

  Resposta(this.resposta, this.onSelecao);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(resposta),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
      ),
    );
  }
}
