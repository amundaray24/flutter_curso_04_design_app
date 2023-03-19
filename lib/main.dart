import 'package:flutter/material.dart';
import 'package:flutter_curso_04_design_app/src/screens/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic-design': (_) => const BasicDesignScreen(),
        'scroll_screen': (_) => const ScrollScreen()
      },
    );
  }
}