import 'package:flutter/material.dart';

class Tapage extends StatefulWidget {
  const Tapage({super.key});

  @override
  State<Tapage> createState() => _TapageState();
}

class _TapageState extends State<Tapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Page 2",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          )
          )
        ),
    );
  }
}