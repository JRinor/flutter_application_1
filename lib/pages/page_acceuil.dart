import 'package:flutter/material.dart';
import 'page2.dart';

class PageAccueil extends StatefulWidget {
  @override
  _PageAccueilState createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  final TextEditingController _controllerNom = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acceuil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllerNom,
              decoration: InputDecoration(labelText: 'Nom'),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page2(name: _controllerNom.text),
                      ),
                    );
                  },
                  child: Text('Start'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}