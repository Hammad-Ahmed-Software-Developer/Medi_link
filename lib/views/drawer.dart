import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medi_link/views/home_screen.dart';
import 'package:medi_link/views/splash%20screen/second_splash.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color:
                  Theme.of(context).drawerTheme.backgroundColor ?? Colors.blue,
            ),
            child: const Text(
              'Medi Link',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Get.to(() => HomeScreen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              if (Get.currentRoute != '/profile') {
                Get.snackbar("Error", "Profile page is not implemented yet.");
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              if (Get.currentRoute != '/settings') {
                Get.snackbar("Error", "Settings page is not implemented yet.");
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              // Implement logout logic here
              Get.offAll(() => splash_2());
            },
          ),
        ],
      ),
    );
  }
}
