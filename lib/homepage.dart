import 'package:flutter/material.dart';
import 'package:library_manage_project/widgets/drawer_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text("Welcome To Our World"),
      ),

      body: const Center(
        child: Text(
          'Welcome to the Homepage!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
