import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado{
    if(pontuacao > 8 ){
      return 'parabens $pontuacao';
    }else{
      return 'você não foi muito bem $pontuacao';
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 21, color: Colors.blueGrey),
          ),
        ),
        FlatButton(onPressed: quandoReiniciarQuestionario, child: Text('Reiniciar ??'))
      ],
    );
  }
}
