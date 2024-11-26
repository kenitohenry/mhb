import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:media_kit/media_kit.dart';
import 'dart:async';

import 'package:mhb/greetings/greetings.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //MediaKit.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/splash_image.png', height: 200),
            const SizedBox(height: 20),
            const Text(
              'Welcome to MHB',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('MHB')),
        foregroundColor: const Color.fromARGB(255, 169, 211, 245),
      ),
      body: const Center(
        child: EnterName(),
      ),
    );
  }
}

class EnterName extends StatelessWidget {
  const EnterName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 120),
            const Text("Login",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold)),
            const SizedBox(height: 80),
            TextInputScreen(),
          ],
        ),
      ),
    );
  }
}

class TextInputScreen extends StatefulWidget {
  const TextInputScreen({super.key});

  @override
  _TextInputScreenState createState() => _TextInputScreenState();
}

class _TextInputScreenState extends State<TextInputScreen> {
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  String _displayTextUsername = "Enter your name";
  final String _passwordField = "Enter Password";
  void _updateText() {
    setState(() {
      _displayTextUsername = _controllerUsername.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            controller: _controllerUsername,
            decoration: const InputDecoration(
              labelText: 'Enter your Username',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _controllerPassword,
            decoration: const InputDecoration(
              labelText: 'Enter your Password',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            child: Row(children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Greetings()),
                  );
                },
                child: const Text('Sign In '),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Greetings()),
                  );
                },
                child: const Text('Sign Up'),
              ),
            ]),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
