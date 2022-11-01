import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzzzz/controlles/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/bakk.jpg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.white),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style:TextStyle(color: Colors.white,fontSize: 25),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
