import 'package:flutter/material.dart';



class Result extends StatelessWidget{
  final int answerScore;
  final int wrongScore;
  final Function resetHandler;
  Result(this.answerScore,this.wrongScore,this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Column(children: [
          Text("Your Score :",
            style: TextStyle(
            fontSize: 22,
            color: Colors.blue),
          ),
          Text("True :"+ answerScore.toString()),
          Text("Wrong :"+wrongScore.toString()),
          RaisedButton(
          child:Text("Try Again"),
          onPressed: resetHandler)
      ],),
      )  
    );
  }
}