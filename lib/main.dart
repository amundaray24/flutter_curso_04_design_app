import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_curso_04_design_app/src/screens/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic-design'  : (_) => const BasicDesignScreen(),
        'scroll_screen' : (_) => const ScrollScreen(),
        'home_screen'   : (_) => const HomeScreen(),
      },
    );
  }
}