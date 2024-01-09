import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(this.pontuacao, this.reiniciarQuestionario, {super.key});

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'Parabéns';
    } else if (pontuacao < 15) {
      return 'Você é bom!';
    } else if (pontuacao < 18) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
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
          style: const TextStyle(
            fontSize: 28,
          ),
        )),
        ElevatedButton(
          onPressed: reiniciarQuestionario,
          child: const Text('Reiniciar?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              )),
        )
      ],
    );
  }
}
