import 'package:flutter/material.dart';


class Choices extends StatelessWidget {
  final Map<String, Object> choices;
  final Function selectHandler;
  Choices(this.choices,this.selectHandler );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  
          FlatButton(
          child: Text(this.choices["text"]),
          onPressed: selectHandler,
          
          )
    );
  }
}