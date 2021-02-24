import 'package:flutter/material.dart';
import './exam.dart';
void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  //TODO implement state
}

class _MyAppState extends State<MyApp> {
  var textChange="This is body 2";
  int _cnt=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My app Quiz",
            style: TextStyle(fontSize: 18),
            ),
        ),
        body: Column(children: [
          Exam()
        ],),
      )
    );
  }

//
void clickBtn(){
  setState(() {
    _cnt++;
    textChange=_cnt.toString();
    if(_cnt>=5){
      textChange="This is Body";
      _cnt=0;
    }
  });
}
}

 

 