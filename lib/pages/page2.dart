import 'package:flutter/material.dart';
import 'questions.dart';
import 'page3.dart';

class Page2 extends StatefulWidget {
  final String name;

  Page2({required this.name});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _indexQuestionActuelle = 0;
  int _score = 0;

  void _repondreQuestion(String reponse) {
    if (reponse == questions[_indexQuestionActuelle].correctAnswer) {
      _score++;
    }
    if (_indexQuestionActuelle < questions.length - 1) {
      setState(() {
        _indexQuestionActuelle++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Page3(name: widget.name, score: _score),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeu:'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://morseweiswlpykaugwtd.supabase.co/storage/v1/object/public/flags/${questions[_indexQuestionActuelle].flag}.webp',
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Table(
              children: [
                TableRow(
                  children: [
                    _buildBoutonReponse(questions[_indexQuestionActuelle].answers[0]),
                    _buildBoutonReponse(questions[_indexQuestionActuelle].answers[1]),
                  ],
                ),
                TableRow(
                  children: [
                    _buildBoutonReponse(questions[_indexQuestionActuelle].answers[2]),
                    _buildBoutonReponse(questions[_indexQuestionActuelle].answers[3]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBoutonReponse(String reponse) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () => _repondreQuestion(reponse),
        child: Text(reponse),
      ),
    );
  }
}