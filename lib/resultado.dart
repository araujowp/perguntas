import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  Resultado(this.pontuacao);

  String get fraseResultado{
    if(pontuacao > 8 ){
      return 'parabens $pontuacao';
    }else{
      return 'você não foi muito bem $pontuacao';
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 21, color: Colors.blue),
      ),
    );
  }
}
