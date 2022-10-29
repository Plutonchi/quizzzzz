import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzzzz/constants/constans.dart';
import 'package:quizzzzz/controlles/question_controller.dart';
import 'package:quizzzzz/quiz/component/question_card.dart';

import 'progress.dart';

class Body extends StatelessWidget {
  const Body({Key key});

  @override
  Widget build(BuildContext context) {
    QuestionControllere _questionsController = Get.put(QuestionControllere());
    return Stack(
      children: [
        Image.asset(
          "assets/bakk.jpg",
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text.rich(
                  TextSpan(
                    text: "Question 1",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: kGrayColor),
                    children: [
                      TextSpan(text: "/10", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionsController.pageController,
                  itemCount: _questionsController.questions.length,
                  itemBuilder: (context, index) => QuestionmCard(
                    question: _questionsController.questions[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
