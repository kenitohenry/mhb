import 'package:flutter/material.dart';
import 'package:mhb/greetings/breatheIn.dart';
import 'dart:async';

import 'package:mhb/greetings/patientScreen.dart';

class Anxiety extends StatelessWidget {
  const Anxiety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anxious"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text(
                  "Don't worry you'll get through this, let's start with some breathing",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            // const Text(
            //   'Hold for seconds...',
            //   style: TextStyle(
            //     fontSize: 18,
            //     color: Color.fromARGB(255, 20, 249, 226),
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BreatheIn()),
                );
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(211, 81, 171, 227)),
              child: Text('Breathing Exercise'),
              // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              //    textStyle: TextStyle(fontSize: 18),
            ),
          ]),
      backgroundColor: const Color.fromARGB(211, 81, 171, 227),
    );
  }

  void onPressed() {}
}
