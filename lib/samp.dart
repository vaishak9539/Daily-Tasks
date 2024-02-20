// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var a = TextEditingController();
  var b = TextEditingController();
  var ab;
  var ac;
  var c;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 40,
            child: TextFormField(
              controller: a,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
            
                )
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 40,
            child: TextFormField(
              controller: b,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
            
                )
              ),
            ),
          ),
          

          ElevatedButton(onPressed: (){
            setState(() {
              ab = int.parse(a.text);
              ac = int.parse(b.text);
              c = ab+ac;
          });}, child: Icon(Icons.add)),
          c != null ? Text(c.toString()) : Text('add value')
        ],
      ),
    );
  }
}