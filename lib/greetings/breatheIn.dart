import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:media_kit/media_kit.dart';

import 'package:mhb/greetings/patientScreen.dart';

class BreatheIn extends StatefulWidget {
  const BreatheIn({super.key});

  @override
  State<BreatheIn> createState() => _BreatheInState();
}

class _BreatheInState extends State<BreatheIn> {
//  late final player = Player();

  void initState() {
    super.initState();
    // Play a [Media] or [Playlist].
//    player.open(Media('assets/breatheInBreatheOut.m4a'));
  }

  @override
  void dispose() {
    // player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breathing excersing"),
      ),
      body: Column(children: [
        const Text("let's Breathe together"),
        const SizedBox(height: 20),
        const Text(
          'Hold for seconds...',
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 20, 249, 226),
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 82, 235, 123)),
          child: Text('Start Breathing Exercise'),
          // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          //    textStyle: TextStyle(fontSize: 18),
        ),
      ]),
      backgroundColor: const Color.fromARGB(211, 81, 171, 227),
    );
  }

  void onPressed() {}
}
