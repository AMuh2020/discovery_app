import 'package:flutter/material.dart';
import 'package:discovery_app/pages/home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const HomePage(),
      ),
    );
  }
}
