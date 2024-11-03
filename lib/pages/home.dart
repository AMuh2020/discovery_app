import 'package:flutter/material.dart';
import 'package:discovery_app/pages/location_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Button pressed');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LocationPage()),
              );
            },
            child: const Text('Press me'),
          ),
        ),
    );
  }
}