class Question {
  final String flag;
  final List<String> answers;
  final String correctAnswer;

  Question({required this.flag, required this.answers, required this.correctAnswer});
}

List<Question> questions = [
  Question(flag: 'vn', answers: ['Chine', 'Vietnam', 'Corée du nord', 'Maroc'], correctAnswer: 'Vietnam'),
  Question(flag: 'tn', answers: ['Singapour', 'Turquie', 'Chine', 'Tunisie'], correctAnswer: 'Tunisie'),
  Question(flag: 'lr', answers: ['Liberia', 'États-Unis', 'Malaisie', 'Panama'], correctAnswer: 'Liberia'),
  Question(flag: 'pe', answers: ['Autriche', 'Lettonie', 'Monaco', 'Pérou'], correctAnswer: 'Pérou'),
  Question(flag: 'om', answers: ['Madagascar', 'Oman', 'Bulgarie', 'Bénin'], correctAnswer: 'Oman'),
];
