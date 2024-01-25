import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_application/Login_screen.dart';
import 'package:quiz_application/Que_screen.dart';
import 'package:quiz_application/models/result_class.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.a, this.b, this.sol, {super.key});
  int a;
  List<Result> sol;
  int b;
  @override
  Widget build(BuildContext context) {
    String s1 = a.toString();
    String s2 = b.toString();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.redAccent),
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $s1 out of $s2 questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            for (int i = 0; i < 6; i++)
              Text(
                sol[i].correctans,
                style: GoogleFonts.lato(),
              ),
            for (int i = 0; i < 6; i++) Text(sol[i].yourans),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                Get.to(QueScreen());
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
