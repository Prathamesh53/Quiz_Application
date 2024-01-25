import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:quiz_application/models/answer_button.dart';
import 'package:quiz_application/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_application/models/result.dart';
import 'package:quiz_application/models/result_class.dart';

class QueScreen extends StatefulWidget {
  const QueScreen({super.key});

  @override
  State<QueScreen> createState() => _QueScreenState();
}

class _QueScreenState extends State<QueScreen> {
  int currQueNo = 0;
  int correctans = 0;
  List<Result> sol =
      []; //created list to store correct ans,your ans and right or wrong;
  void fun() {
    setState(() {
      currQueNo++;
      if (currQueNo >= 6) {
        Get.to(ResultScreen(correctans, 6, sol));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQue = questions[currQueNo];
    // we create method to shuffle ans list,without losing orignal order

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQue.text,
                  style: GoogleFonts.padyakkeExpandedOne(
                    color: Color.fromARGB(255, 5, 5, 5),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // map used to convet one data type to another data type
                // ...currentQue.getshufflelist().map((ans) {
                // return AnswerButton(ans, fun);
                //}),
                AnswerButton(currentQue.getshufflelist()[0], () {
                  sol.add(Result(
                      currentQue.getshufflelist()[0], currentQue.answers[0]));
                  if (currentQue.getshufflelist()[0] == currentQue.answers[0]) {
                    correctans++;
                  }
                  fun();
                }),
                AnswerButton(currentQue.getshufflelist()[1], () {
                  sol.add(Result(
                      currentQue.getshufflelist()[1], currentQue.answers[0]));
                  if (currentQue.getshufflelist()[1] == currentQue.answers[0]) {
                    correctans++;
                  }
                  fun();
                }),
                AnswerButton(currentQue.getshufflelist()[2], () {
                  sol.add(Result(
                      currentQue.getshufflelist()[2], currentQue.answers[0]));
                  if (currentQue.getshufflelist()[2] == currentQue.answers[0]) {
                    correctans++;
                  }
                  fun();
                }),
                AnswerButton(currentQue.getshufflelist()[3], () {
                  sol.add(Result(
                      currentQue.getshufflelist()[3], currentQue.answers[0]));
                  if (currentQue.getshufflelist()[3] == currentQue.answers[0]) {
                    correctans++;
                  }
                  fun();
                }),
              ]),
        ),
      ),
    );
  }
}
