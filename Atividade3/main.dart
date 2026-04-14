import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Calculadora()));

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String display = '0';
  String expressao = '';
  double? valor1;
  String? operacao;

  void pressionar(String tecla) {
  setState(() {
    if (tecla == 'C') {
      display = '0';
      expressao = '';
      valor1 = null;
      operacao = null;
    } 
    else if (tecla == '+' || tecla == '-' || tecla == '*' || tecla == '/') {
      valor1 = double.parse(display);
      operacao = tecla;
      expressao = display + ' ' + tecla;
      display = '0';
    } 
    else if (tecla == '=') {
      double valor2 = double.parse(display);
      double resultado = 0;

      switch (operacao) {
        case '+':
          resultado = valor1! + valor2;
          break;
        case '-':
          resultado = valor1! - valor2;
          break;
        case '*':
          resultado = valor1! * valor2;
          break;
        case '/':
          resultado = valor2 != 0 ? valor1! / valor2 : 0;
          break;
      }

      expressao = expressao + ' ' + display;
      display = resultado.toString();
    } 
    else {
      if (display == '0') {
        display = tecla;
      } else {
        display += tecla;
      }
    }
  });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora')),
      body: Column(
        children: [
          DisplayCalc(
            valor: display,
            expressao: expressao,
          ),

          Row(
            children: [
              BotaoOperacao(texto: 'C', onClick: pressionar),
              BotaoOperacao(texto: '=', onClick: pressionar),
            ],
          ),

          Row(
            children: [
              BotaoNumero(numero: '7', onClick: pressionar),
              BotaoNumero(numero: '8', onClick: pressionar),
              BotaoNumero(numero: '9', onClick: pressionar),
              BotaoOperacao(texto: '/', onClick: pressionar),
            ],
          ),

          Row(
            children: [
              BotaoNumero(numero: '4', onClick: pressionar),
              BotaoNumero(numero: '5', onClick: pressionar),
              BotaoNumero(numero: '6', onClick: pressionar),
              BotaoOperacao(texto: '*', onClick: pressionar),
            ],
          ),

          Row(
            children: [
              BotaoNumero(numero: '1', onClick: pressionar),
              BotaoNumero(numero: '2', onClick: pressionar),
              BotaoNumero(numero: '3', onClick: pressionar),
              BotaoOperacao(texto: '+', onClick: pressionar),
            ],
          ),

          Row(
            children: [
              BotaoNumero(numero: '.', onClick: pressionar),
              BotaoNumero(numero: '0', onClick: pressionar),
              BotaoNumero(numero: '00', onClick: pressionar),
              BotaoOperacao(texto: '-', onClick: pressionar),
            ],
          ),
        ],
      ),
    );
  }
}

class DisplayCalc extends StatelessWidget {
  final String valor;
  final String expressao;

  DisplayCalc({required this.valor, required this.expressao});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              expressao,
              style: TextStyle(fontSize: 24, color: Colors.grey),
            ),
            Text(
              valor,
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class BotaoNumero extends StatelessWidget {
  final String numero;
  final Function(String) onClick;

  BotaoNumero({required this.numero, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => onClick(numero),
        child: Text(
          numero,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class BotaoOperacao extends StatelessWidget {
  final String texto;
  final Function(String) onClick;

  BotaoOperacao({required this.texto, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => onClick(texto),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
        ),
        child: Text(
          texto,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
