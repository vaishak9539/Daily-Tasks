import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  String name;
   Edit({super.key, required this.name});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24,top: 50),
                child: SizedBox(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    initialValue: widget.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                      ),
                      ),
                ),
              ),
               Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: Text("Cancel",
              style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Ok",
              style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      )
            ],
          ),
        ),
      );
    
  }
}