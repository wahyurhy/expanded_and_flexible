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
      home: const ExpandedFlexiblePage(title: 'Expanded & Flexible Home Page'),
    );
  }
}

class ExpandedFlexiblePage extends StatefulWidget {
  const ExpandedFlexiblePage({super.key, required this.title});

  final String title;

  @override
  State<ExpandedFlexiblePage> createState() => _ExpandedFlexiblePageState();
}

class _ExpandedFlexiblePageState extends State<ExpandedFlexiblePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget()
              ],
            ),
            Row(
              children: [
                ExpandedWidget(),
                ExpandedWidget()
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                FlexibleWidget()
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                ExpandedWidget()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.teal,
            border: Border.all(color: Colors.white)
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24
            ),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              border: Border.all(color: Colors.white),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Flexible',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 24
              ),
            ),
          ),
        )
    );
  }
}

