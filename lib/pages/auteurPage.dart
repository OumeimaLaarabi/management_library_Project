import 'package:flutter/material.dart';

class auteurPage extends StatelessWidget {
  const auteurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auteur Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Auteur Page!'),
      ),
    );
  }
}
