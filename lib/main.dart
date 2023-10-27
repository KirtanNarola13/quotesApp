import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/homePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, fontFamily: 'Raleway'),
      routes: {
        '/': (context) => const HomePage(),
      },
    ),
  );
}
