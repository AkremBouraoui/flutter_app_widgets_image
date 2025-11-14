import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widgets de base",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Atelier 2'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Bienvenue a Constantine!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              Image.network(
                'https://mediaim.expedia.com/destination/2/a1e165910f1d99f3415a7a5dea97c034.jpg',
                width: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Constantine, la ville des ponts suspendus et dun riche patrimoine historique',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed:() {
                    print("Tu as cliqué sur Commencer.");
                  },child: Text('Commencer')),
                  OutlinedButton(
                    onPressed: () {
                      print("Tu as cliqué sur En savoir plus.");
                    },
                    child: Text('En savoir plus'),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Tu as cliqué sur le TextButton !");
                    },
                    child: Text('TextButton'),
                  ),
                ],
              )
            ],
          ),
        ),
        ),
      );
  }
}
