import 'package:flutter/material.dart';
import 'package:todoapp/pages/about_page.dart';
import 'package:todoapp/pages/display_notes.dart';
import 'package:todoapp/pages/homescreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer Header with adjustable height
          Container(
            height: 120.0, // Adjust the height as needed
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/header.gif'), // Replace with your image asset path
                fit: BoxFit.cover, // Ensures the image covers the entire area
              ),
            ),
            child: null, // Removing the child so only the image is shown
          ),
          ListTile(
            title: const Text('Task'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homescreen()), // Navigate to TaskPage
              );
            },
          ),
          ListTile(
            title: const Text('Notes'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NoteScreen()), // Navigate to SettingsPage
              );
            },
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()), // Navigate to AboutPage
              );
            },
          ),
        ],
      ),
    );
  }
}