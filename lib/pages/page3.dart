import 'package:flutter/material.dart';
import 'page_acceuil.dart';

class Page3 extends StatelessWidget {
  final String name;
  final int score;

  Page3({required this.name, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Résultat:'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$name', style: TextStyle(fontSize: 24)),
            Text('$score', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PageAccueil()),
                );
              },
              child: Text('re-essayer'),
            ),
          ],
        ),
      ),
    );
  }
}