import 'package:flutter/material.dart';
import 'package:projeto_json/View/CadastrarLivrosView.dart';
import 'package:projeto_json/View/HomeScreenView.dart';
import 'package:projeto_json/View/ListarLivrosView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Livraria",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomeScreen(),
        '/cadastro':(context) => const CadastrarLivroScreen(),
        '/listar':(context) => const ListarLivrosScreen(),
      },
    );
  }
}
