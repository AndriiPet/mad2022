import 'package:flutter/material.dart';
import 'package:task1/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Data;

    return Scaffold(
      appBar: AppBar(title: const Text("Task 1"),),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Вітаю ${args.name} ${args.surname} ", style: TextStyle(fontSize: 25) ),
          
        ],
      ),
    ));
  }
}
