import 'package:flutter/material.dart';
import 'screens/school_search.dart';
import 'screens/communication.dart';
import 'screens/dashboard.dart';
import 'screens/profile.dart';

void main() => runApp(const EduConnectApp());

class EduConnectApp extends StatelessWidget {
  const EduConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduConnect Uganda',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EduConnect Uganda'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.school, size: 80, color: Colors.green),
              SizedBox(height: 20),
              Text(
                'Welcome to EduConnect Uganda!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Connecting schools, teachers, parents, and students across Uganda.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: null, // we'll add navigation later
                    child: Text('Schools'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('About'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
