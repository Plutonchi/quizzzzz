import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:quizzzzz/controlles/question_controller.dart';

import '../../constants/constans.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff3f4768),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constrains) => Container(
                    width: constrains.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      gradient: kPrimaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${(controller.animation.value * 60).round()} sec"),
                        Icon(Icons.timelapse),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
