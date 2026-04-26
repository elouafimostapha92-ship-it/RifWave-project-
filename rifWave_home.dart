import 'package:flutter/material.dart';

class RifWaveHome extends StatefulWidget {
  @override
  _RifWaveHomeState createState() => _RifWaveHomeState();
}

class _RifWaveHomeState extends State<RifWaveHome> {
  final TextEditingController _promptController = TextEditingController();

  void _onGeneratePressed() {
    // TODO: Integrate AI music generation logic/API call here
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Coming Soon'),
        content: Text('Music generation is not yet implemented.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RifWave',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Color(0xFF121212),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFF22222A),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintStyle: TextStyle(
            color: Colors.white54,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('RifWave'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Generate Rif Folk Music!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _promptController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Describe your music (e.g., "Happy, slow bass...")',
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _onGeneratePressed,
                child: Text('Generate'),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
