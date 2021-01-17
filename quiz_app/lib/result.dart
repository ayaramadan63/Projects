import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final Function q;
  final int resultscore;

  Result(this.q, this.resultscore);

  String get resultphrase {
    String resultText;
    if(resultscore>=70){
      resultText = "you are awesome..!";
    }
    else if(resultscore>=40){
      resultText = "likable ..!";
    }
    else{
      resultText = "you are so bad..!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your score is $resultscore",
            style: TextStyle(fontSize: 40, color:b),
            textAlign: TextAlign.center,
          ),
          Text(
            resultphrase,
            style: TextStyle(fontSize: 40, color: b),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Restart The App",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            onPressed: q,
          )
        ],

      ),
    ));
  }
}
