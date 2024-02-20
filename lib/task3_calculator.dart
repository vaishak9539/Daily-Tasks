import 'package:flutter/material.dart';

class Calculator1 extends StatefulWidget {
  const Calculator1({super.key});

  @override
  State<Calculator1> createState() => _Calculator1State();
}

class _Calculator1State extends State<Calculator1> {
  var FirstNum=0;
  var SecontNum=0;
  var Sybmol=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200,bottom: 10),
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){

                   },
                   child: Text("C"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Icon(Icons.close)
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("%"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("/"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                            
                    FloatingActionButton(onPressed: (){},
                   child: Text("7"),
                   ),
                  
                    FloatingActionButton(onPressed: (){},
                   child: Text("8"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("9"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("X"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){
                    FirstNum=4;
                   },
                   child: Text("4"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=5;
                    },
                   child: Text("5"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=6;
                    },
                   child: Text("6"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("-"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){
                    FirstNum=1;
                   },
                   child: Text("1"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=2;
                    },
                   child: Text("2"),
                   ),
                    FloatingActionButton(onPressed: (){
                      FirstNum=3;
                    },
                   child: Text("3"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("+"),
                   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   FloatingActionButton(onPressed: (){},
                   child: Text("00"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("0"),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("."),
                   ),
                    FloatingActionButton(onPressed: (){},
                   child: Text("="),
                   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}