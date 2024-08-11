import 'package:flutter/material.dart';
import 'package:login_test_app/create_account_page.dart';
import 'package:login_test_app/login_page.dart';

void main() {
  runApp(const MaterialApp(
    home: loginTestApp(),
  ));
}

// #F2F2DF
//0XFF 65558F

class loginTestApp extends StatefulWidget {
  const loginTestApp({super.key});

  @override
  State<loginTestApp> createState() => _loginTestAppState();
}

class _loginTestAppState extends State<loginTestApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF2F2DF),
      //appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset(
                'assets/welcome_image.png',
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text('Welcome to the app',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                'We\'re excited to help you book and manage your service appointments with ease.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.black.withOpacity(0.4),
                    ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFE97552),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 15)),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 75),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateAccountPage(),
                  ),
                );
              },
              child: Text(
                'Create an account',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.blue,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
