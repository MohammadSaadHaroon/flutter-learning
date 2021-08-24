//This function run automatically when we run the app
import 'package:flutter/material.dart';

void main() {
  //runApp is a function of material library
  runApp(MyApp());
}

//to extends the StatelessWidge you need two thing one is import the material library and other is "build" function
class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s you favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
