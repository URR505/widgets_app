import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  static const name = 'counter_screen';
  @override
  Widget build(BuildContext context) {
    int valor = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
          child: Text(
        'Valor: $valor',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          valor++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
