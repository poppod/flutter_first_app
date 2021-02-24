import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      //padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: 
            Text(questionText,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              overflow: TextOverflow.clip,
              softWrap: true,
              )
            ,)

        ],
      ),
    );
  }
}