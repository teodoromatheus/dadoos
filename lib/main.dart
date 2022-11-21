import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dadoos',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          backgroundColor: Colors.teal[700],
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({Key? key}) : super(key: key);

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int dadoEsquerdo = 1;
  int dadoDireito = 1;

  void atualizarDados() {
    dadoEsquerdo = Random().nextInt(6) + 1;
    dadoDireito = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('imagens/dado$dadoEsquerdo.png'),
              onPressed: () {
                setState(() {
                  atualizarDados();
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('imagens/dado$dadoDireito.png'),
              onPressed: () {
                setState(() {
                  atualizarDados();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
