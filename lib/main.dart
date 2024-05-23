import 'package:flutter/material.dart';
import 'package:soativaeformativa/mapadois.dart';
import 'package:soativaeformativa/mapatres.dart';
import 'package:soativaeformativa/mapaum.dart';
import 'menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu',
      initialRoute: '/',
      routes: {
        '/': (context) => Telamenu(),
        '/primeiromapa': (context) => const Telamapaum(),
        '/segundomapa': (context) => const Telamapadois(),
        '/terceiromapa': (context) => const Telamapatres(),
      },
    );
  }
}
