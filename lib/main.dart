import 'package:flutter/material.dart';

import 'Features/Registration/presentation/views/login_page.dart';
import 'Features/Registration/presentation/views/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor:
              Colors.black, // Color of text and icons in the AppBar
          elevation: 0,
        ),
      ),
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
