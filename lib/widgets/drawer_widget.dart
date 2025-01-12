
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer header
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepPurple, // Background color of the header
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Home'),
              trailing: Icon(Icons.arrow_circle_right, color: Colors.grey,),

              onTap: () {
                Navigator.pushNamed(context, "/home"); // Close the drawer
              },
            ),
            // Drawer items
            Divider(height: 5, color: Colors.black,),

            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Livre'),
              trailing: Icon(Icons.arrow_circle_right, color: Colors.grey,),

              onTap: () {
                Navigator.pushNamed(context, "/Livre"); // Close the drawer
              },
            ),

            Divider(height: 5, color: Colors.black,),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Auteur'),
              trailing: Icon(Icons.arrow_circle_right, color: Colors.grey,),
              onTap: () {
                // Handle navigation for Auteur
                Navigator.pushNamed(context, "/Auteur"); // Close the drawer
              },
            ),
            Divider(height: 5, color: Colors.black,),

          ],

        ),


    );
  }
}
