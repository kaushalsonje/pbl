import 'package:flutter/material.dart';
import 'package:login_signup/splash_screen.dart'; // Import your custom splash screen file
import 'home_page.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'forgot_password_page.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      home: StaticSplashScreen(), // Set the home to StaticSplashScreen
      routes: {
        HomePage.routeName: (context) => HomePage(),
        LoginPage.routeName: (context) => LoginPage(),
        ForgotPasswordPage.routeName: (context) => ForgotPasswordPage(),
        SignUpPage.routeName: (context) => SignUpPage(),
        SplashScreen.routeName: (context) =>
            SplashScreen(), // Add route for your custom splash screen
      },
    );
  }
}

class StaticSplashScreen extends StatefulWidget {
  @override
  _StaticSplashScreenState createState() => _StaticSplashScreenState();
}

class _StaticSplashScreenState extends State<StaticSplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigation to the custom splash screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SplashScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your static splash screen content (e.g., logo, text)
            Image.asset('assets/4SQUARE.png'),
            const SizedBox(height: 20),
            const Text(
              '4SQUARE APP !!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
