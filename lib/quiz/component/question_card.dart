import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzzzz/controlles/question_controller.dart';

import '../../constants/constans.dart';
import '../../models/model.dart';
import 'option.dart';

class QuestionmCard extends StatelessWidget {
  const QuestionmCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionControllere _controllere = Get.put(QuestionControllere());

    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controllere.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}