import 'package:flutter/material.dart';
import 'package:unihack2023/main.dart';
import 'package:unihack2023/maps_page.dart';
import 'package:unihack2023/profile_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 150.0,
            child : DrawerHeader(
            padding: EdgeInsets.only(top: 20.0, left: 20.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF479FD5),
                  Color(0xFF4682A9),
                ],
              ),
            ),
            child: Text(
              'Hello!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) =>const MyHomePage(title: 'WhaToDoIn'))
              );
            }
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {

              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage(
                  )
                  )
              );

            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Near Me'),
            onTap: () {
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MapsPage())
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle Settings button tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 10,
            endIndent: 10
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Handle Logout button tap
              Navigator.pop(context); // Close the drawer
              // Perform logout logic here
            },
          ),
        ],
      ),
    );
  }
}