import 'package:flutter/material.dart';
import 'dart:async';

import 'package:mhb/greetings/anxietyScreen.dart';

class GreetingsPatient extends StatelessWidget {
  const GreetingsPatient({super.key});

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
                  const Text("Choose which best describes you",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),

                  const SizedBox(height: 80), const SizedBox(height: 80),

                  Center(
                      child: TextButton(
                          onPressed: onPressed,
                          child: const Text("General Sadness",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400)))),
                  const SizedBox(height: 12),
                  Center(
                      child: TextButton(
                          onPressed: onPressed,
                          child: const Text("Depression",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400)))),
                  const SizedBox(height: 12),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Anxiety()),
                            );
                          },
                          child: const Text("Anxiety",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400)))),
                  const SizedBox(height: 12),
                  Center(
                      child: TextButton(
                          onPressed: onPressed,
                          child: const Text("Erratic Moods",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400)))),
                  const SizedBox(height: 12),
                  Center(
                      child: TextButton(
                          onPressed: onPressed,
                          child: const Text("Other",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400)))),
                  //CheckBoxDemo()
                ]),
          ),
        ));
  }

  void onPressed() {}
}
