import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:mhb/chat/chat.dart';
import 'dart:async';
//import 'package:media_kit/media_kit.dart';

import 'package:mhb/greetings/patientScreen.dart';

class BreatheIn extends StatefulWidget {
  const BreatheIn({super.key});

  @override
  State<BreatheIn> createState() => _BreatheInState();
}

class _BreatheInState extends State<BreatheIn> {
  bool playedExcersies = false;

  void initState() {
    super.initState();
    final player = AudioPlayer();
    player.play(AssetSource('breatheInBreatheOut.m4a'));

    // Play a [Media] or [Playlist].
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
        title: const Text("Breathing exercises"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
                child: const Text(
              "Let's Breathe together",
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            const SizedBox(height: 20),
            !playedExcersies
                ? ElevatedButton(
                    onPressed: startBreathingexcersise,
                    style: ElevatedButton.styleFrom(
                        foregroundColor:
                            const Color.fromARGB(211, 81, 171, 227)),
                    child: Text('Start Breathing Exercise'),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: startBreathingexcersise,
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(211, 81, 171, 227)),
                        child: Text('Play Again'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatUI()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(210, 81, 227, 159)),
                        child: Text('Talk to a companion'),
                      )
                    ],
                  ),
          ]),
      backgroundColor: const Color.fromARGB(211, 81, 171, 227),
    );
  }

  void onPressed() {}

  void startBreathingexcersise() {
    final player = AudioPlayer();
    player.play(AssetSource('breathingExcersise2.m4a')).then(
      (value) {
        if (playedExcersies == false) {
          setState(() {
            playedExcersies = !playedExcersies;
          });
        }
      },
    );
  }
}
