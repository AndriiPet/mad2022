import 'package:flutter/material.dart';
import 'package:task1/data/chapter.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chapter});
  final Future<Chapter> chapter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Zalikowa robota')),
        body: FutureBuilder(
            future: chapter,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Chapter name',
                          style: Theme.of(context).textTheme.headline3),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(snapshot.data!.nameComplex,
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      Text(snapshot.data!.nameArabic,
                          style: Theme.of(context).textTheme.headline5),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Error: ${snapshot.error}',
                        style: Theme.of(context).textTheme.headline6));
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }
}
