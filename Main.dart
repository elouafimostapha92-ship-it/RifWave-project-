import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const RifWaveApp());
}

class RifWaveApp extends StatelessWidget {
  const RifWaveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RifWave',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[850],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900],
          elevation: 0,
        ),
      ),
      home: const RifWaveHomeScreen(),
    );
  }
}
