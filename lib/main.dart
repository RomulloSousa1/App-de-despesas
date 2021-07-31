import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Despesas());
}

class Despesas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Telainicial(),
    );
  }
}

class Telainicial extends StatelessWidget {
  final String _teste = 'Despesas Pessoais';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_teste), backgroundColor: Colors.purple),
      body: Cartoes(),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    // Add your onPressed code here!
    },child: const Icon(Icons.add),
      backgroundColor: Colors.purple,
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Cartoes extends StatelessWidget {
  final String valor = '3600';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading:Text("3600",style: TextStyle(fontSize: 30),),
            title: Center(child:Text('Comprar um tenis novo')),
              subtitle: Center(child:Text('27 jul 2021')),
            ),
          ],
        ),
      ),
    );
  }
}
