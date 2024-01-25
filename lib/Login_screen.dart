import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_application/Que_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 127, 72, 224),
            Color.fromARGB(255, 42, 5, 107)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/light-bulb.png', width: 100),
                  Image.asset('assets/images/question-mark.png', width: 100),
                  Image.asset('assets/images/question.png', width: 100),
                ],
              ),
              HeightBox(55),
              Image.asset(
                'assets/images/Flutter.png',
                width: 200,
                color: Color.fromARGB(255, 238, 21, 5),
              ),
              const HeightBox(20),
              Text(
                "Learn Flutter in fun way",
                style: GoogleFonts.rubik(
                  fontSize: 32,
                ),
              ),
              const HeightBox(20),
              OutlinedButton.icon(
                onPressed: () {
                  Get.to(() => const QueScreen());
                },
                label: const Text("Start Quiz"),
                icon: const Icon(Icons.arrow_right_alt_rounded),
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
