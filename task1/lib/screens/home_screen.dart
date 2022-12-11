import 'package:flutter/material.dart';

import '../services/http_service.dart';
import 'result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedChapter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Zalikowa robota'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Select chapter $selectedChapter',
                  style: Theme.of(context).textTheme.headline4),
            ),
            Slider(
                max: 114,
                min: 1,
                value: selectedChapter.toDouble(),
                onChanged: (value) {
                  setState(() {
                    selectedChapter = value.toInt();
                  });
                }),
            ElevatedButton(
              child: const Text("Get chapter name"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ResultScreen(
                        chapter: HttpService().getData(selectedChapter))));
              },
            )
          ],
        ));
  }
}
