import 'package:flutter/material.dart';
import 'package:task/task1.1.dart';

class Cale extends StatefulWidget {
  const Cale({super.key});

  @override
  State<Cale> createState() => _CaleState();
}

class _CaleState extends State<Cale> {
  List task=["Task 1","Task 2","Task 3","Task 4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.menu_rounded,
            color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Text("Feb 2024",
              style: TextStyle(
                color: Colors.white
              ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("M",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("1",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("T",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("2",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("W",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("3",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("T",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("4",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("F",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("5",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 58,
                    color: Colors.black,
                    child: Center(
                      child: Text("S",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 58,
                    color: Colors.black,
                    child: Center(
                      child: Text("6",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("S",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 57,
                    color: Colors.black,
                    child: Center(
                      child: Text("7",
                      style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Text("Tueseday, 6 February",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (ctx,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                    child: Container(
                      height: 80,
                      width: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                          child: Text(task[index],
                          ),

                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220),
                          child: Icon(Icons.edit_square),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Icon(Icons.delete),
                        )
                        ],
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      
                      ),
                    ),
                  );
                },
                ),
            ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  height: 50,
                  width: 50,
                  child: IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                      return Tapage();
                    }
                    )
                    );
                  },
                   icon: Icon(Icons.add,
                   color: Colors.white,
                   size: 30,
                   ),
                   ),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  
                 ),
                ),
              ),
            ],
          )
        ],
      ),
      
    );
  }
}