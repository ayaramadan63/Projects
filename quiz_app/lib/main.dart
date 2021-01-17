import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import 'result.dart';
import 'answer.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}


Color w= Colors.white;
Color b= Colors.black;

class _MyAppState extends State<MyApp> {

  bool isswitch=false;


  int _totalscore = 0;

  int _questionindex = 0;

  int num0 = 0, num1 = 1, num2 = 0;

  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void answerques(int score) {
    if (_questionindex == 0) num0 = score;
    if (_questionindex == 1) num1 = score;
    if (_questionindex == 2) num2 = score;

    _totalscore += score;

    setState(() {
      _questionindex += 1;
    });
    //print("Answer Chosen..!");
    //print(_questionindex);
    //print(_totalscore);
    print("_questionindex $_questionindex");
    print("num $num0");
    print("num $num1");
    print("num $num2");
    print("_totalscore $_totalscore");
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Red', 'score': 30},
        {'text': 'Yellow', 'score': 15}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Elephant', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Lion', 'score': 30},
        {'text': 'Monkey', 'score': 15}
      ]
    },
    {
      'questionText': 'What\'s your favourite City ?',
      'answers': [
        {'text': 'Cairo', 'score': 10},
        {'text': 'Alex', 'score': 20},
        {'text': 'Tanta', 'score': 30},
        {'text': 'Aswan', 'score': 15}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App",style: TextStyle(color: w),),
          actions: [
            Switch(value: isswitch,onChanged: (value){
              setState(() {
                isswitch=value;
                print(isswitch);
                if(isswitch==true){b=Colors.white;w=Colors.black;}
                if(isswitch==false){b=Colors.black;w=Colors.white;}
              });
            },
              activeColor: Colors.white,
            inactiveThumbColor: Colors.black,
            inactiveTrackColor: Colors.black,
            ),
          ],
        ),
        body: Container(
          color: w,

            //width: double.infinity,
            child: _questionindex < _question.length
                ? Quiz(_question, _questionindex, answerques)
                : Result(_resetQuiz, _totalscore)),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back,color: w,size: 40,),
          onPressed: () {
            if (_questionindex == 1) _totalscore -= num0;
            if (_questionindex == 2) _totalscore -= num1;
            if (_questionindex == 3) _totalscore -= num2;

            setState(() {
              if (_questionindex > 0) _questionindex--;
            });

            print("_questionindex $_questionindex");
            print("num $num0");
            print("num $num1");
            print("num $num2");
            print("_totalscore $_totalscore");
          },
        ),
      ),
    );
  }
}
