import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // title: const Text('Coming Soon'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
        'Coming Soon',
        style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
    );
  }
}