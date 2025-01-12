import 'package:flutter/material.dart';
import 'package:library_manage_project/homepage.dart';
import 'package:library_manage_project/pages/auteurPage.dart';
import 'package:library_manage_project/pages/livrePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) {
          return Homepage();
        },
        "/Livre": (context) {
          return Livrepage();
        },
        "/Auteur": (context) {
          return auteurPage();
        },
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Center the image of books
          Center(
            child: Image.asset(
              'assets/images/books_image.jpg', // Ensure you have the image in the assets folder
              height: 250, // Adjust the size of the image as needed
            ),
          ),
          const SizedBox(height: 40), // Space between the image and the button
          // 'Let's Start' button at the bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the home page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
              child: const Text('Let\'s Start'),
            ),
          ),
        ],
      ),
    );
  }
}
