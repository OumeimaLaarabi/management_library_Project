import 'package:flutter/material.dart';
 
class Livrepage extends StatelessWidget {
  const Livrepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Livre Page'),
      ),
      body: const Center(
        child: Text('Welcome to the livre Page!'),
      ),
    );
  }
}
