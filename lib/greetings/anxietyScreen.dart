 import 'package:flutter/material.dart';
import 'package:mhb/greetings/breatheIn.dart';
import 'dart:async';

import 'package:mhb/greetings/patientScreen.dart';

class Anxiety extends StatelessWidget {
  const Anxiety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Anxiety screen" ),),
    body: Column(children: [const Text( "let's Breathe together"), const SizedBox(height: 20),     const Text(
       'Hold for seconds...',
        style: TextStyle(
           fontSize: 18,
            color: Color.fromARGB(255, 20, 249, 226),
             ),
           ),
            const SizedBox(height: 50),  ElevatedButton(
               onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BreatheIn()),
                  );
                },
                style: ElevatedButton.styleFrom(foregroundColor: const Color.fromARGB(255, 82, 235, 123)),
                child: Text('Start Breathing Exercise'),
                   // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                 //    textStyle: TextStyle(fontSize: 18), 
               ),
              ]),
    backgroundColor:const Color.fromARGB(211, 81, 171, 227),
    
    
   

           
           
                         
        
       
    );

  }
 
 

 void onPressed() {
 }

}