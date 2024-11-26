import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mhb/greetings/patientScreen.dart';

class Greetings extends StatelessWidget {
  const Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('MHB'))),
        body: Container(
          height: 900,
          padding: const EdgeInsets.all(32),
          child: Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Who are you?",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),

                  const SizedBox(height: 80), const SizedBox(height: 80),
                  Center(
                      child: TextButton(
                        onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GreetingsPatient()),
                  );
                },
                          child: const Text("Patient",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400)))),
                  const SizedBox(height: 40),
                  Center(
                      child: TextButton(
                          onPressed: onPressed,
                          child: const Text("Therapist",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400))))
                  //CheckBoxDemo()
                ]),
          ),
        ));
  }

  void onPressed() {}
}
