import 'package:flutter/material.dart';
import 'package:consultorio_odontologico_rosales/screens/login_screen.dart';
import 'package:consultorio_odontologico_rosales/screens/home_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consultorio Odontológico Rosales',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        
      },
    );
  }
}
