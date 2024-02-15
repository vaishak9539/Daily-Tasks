import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List name=["athul","ammu","vinu","anu","meenu","anju",'kunju',"hari","parvathi","appu"];
  List time=["10.00","9.40","9.20","9.15","9.00","8.45","8.30","8.25","8.10","8.00",];
  List message=["4","6","8","2","1","4","9","11","1",'10'];
  List image=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (ctx,index){
          return Divider();
        },
        itemBuilder: (ctx,index){
          return ListTile(
                  title: Text(name[index]),
                  subtitle: Text("hi"),
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/images/standing-people.jpg")),
                  trailing: Column(
                    children: [
                      Text(time[index]),
                      Container(
                        child: Center(
                          child: Text(message[index],
                          style: TextStyle(color: Colors.white),
                          ),
                        ),
                        height: 20,
                        width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.green[700],
                        
                        ),
                      )
                    ],
                  ),
                );
               },
            ),
    );
  }
}