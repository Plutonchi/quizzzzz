import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzzzz/controlles/question_controller.dart';

import '../../constants/constans.dart';

class Option extends StatelessWidget {
  const Option({
    Key key,
    this.text,
    this.index,
    this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionControllere>(
        init: QuestionControllere(),
        builder: (qnConroller) {
          Color getTheRightColor() {
            if (qnConroller.isAnswered) {
              if (index == qnConroller.correctAns) {
                return kGreenColor;
              } else if (index == qnConroller.selectedAns &&
                  qnConroller.selectedAns != qnConroller.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getTheRightIcon() {
            return getTheRightIcon() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: getTheRightColor()),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}$text",
                    style: TextStyle(
                      color: getTheRightColor(),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == kGrayColor
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == kGrayColor ?null : Icon(
                      getTheRightIcon(),
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
