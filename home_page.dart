import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
