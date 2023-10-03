import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded & Flexible',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Expanded & Flexible Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(color: Colors.red,)),
        Expanded(child: Container(color: Colors.orange,)),
        Expanded(child: Container(color: Colors.yellow,)),
        Expanded(child: Container(color: Colors.green,)),
        Expanded(flex: 2, child: Container(color: Colors.blue,)),
        Expanded(child: Container(color: Colors.indigo,)),
        Expanded(child: Container(color: Colors.purple,)),
      ],
    );
  }
}
