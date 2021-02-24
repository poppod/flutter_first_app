
import 'package:flutter/material.dart';
import 'package:flutter_first_app/question.dart';
import 'package:flutter_first_app/result.dart';
import './choices.dart';
class Exam extends StatefulWidget {
  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  var _exam=[
    {"question":"Situation: May sees Pond at the bus station after school.\n"+
                "May: Hello, Pond. _______________\n"+
                "Pond: Hello, May. I’m not so good.",
      "choices":[
        {"text":"How have you been?","answer":true},
        {"text":"How’s your father?","answer":false},
        {"text":"How’s your work?","answer":false},
        {"text":"How do you do?","answer":false}
        ]
      
    },
    {"question":"Situation: Tom dropped Jim’s mobile phone.\n"+
                "Tom: I dropped your mobile phone.\n"+
                "Jim: Let me have a look. I don’t think it’s broken.\n"+
                "Tom: _______________\n"+
                "Jim: It’s all right. ",
      "choices":[
        {"text":"I think it’s too old.","answer":false},
        {"text":"I’m sorry about that.","answer":true},
        {"text":"I dropped it on the carpet.","answer":false},
        {"text":"Can you buy a new one?","answer":false},
        ]
      
    }
  ];
  int indexExam=0;
  int _totalScore=0;
  int _wrongScore=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: indexExam<_exam.length ?Column(
        children: [ 
            Question(_exam[indexExam]["question"]),
        ...(_exam[indexExam]["choices"] as List<Map<String,Object>>).map((Map<String, Object> choice)  {
          return Choices(choice,()=>seleted(choice["answer"]));
        }).toList()
        ],): Result(_totalScore, _wrongScore,_resetExam)
    );
  }
  void _resetExam(){
    setState(() {
      this._totalScore=0;
      this._wrongScore=0;
      this.indexExam=0;
    });
  }

  void seleted(bool answer){
    if(answer){
      this._totalScore++;
    }
    else{
      this._wrongScore++;
    }
    setState(() {
      this.indexExam++;
    });
    
  }
}