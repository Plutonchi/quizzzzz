import 'package:flutter/material.dart';
import 'package:quizzzzz/constants/constans.dart';
import 'package:quizzzzz/quiz/quiz.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({Key key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              "assets/bakk.jpg",
              fit: BoxFit.fill,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      "Let's Play Quiz",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Enter your informations below",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xff1c2341),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "FullName",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizScreen(),),);
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(kDefaultPadding * 0.75),
                        decoration: BoxDecoration(
                          gradient: kPrimaryColor,
                          borderRadius: BorderRadius.all( 
                            Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Let's Start Quizz",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
