import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chops',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeDesc extends StatelessWidget {
  final String title;

  const HomeDesc({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(12.0),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10), // Add some space between text and button
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 1.0,
              child: Image.asset(
                'assets/images/landing.jpg',
                fit: BoxFit.cover,
              ),
            ),
            HomeDesc(title: 'Order your food easily'),
          ],
        ),
      ),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Center(
        child: Text('This is the Registration Page'),
      ),
    );
  }
}
