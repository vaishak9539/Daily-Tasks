import 'package:flutter/material.dart';
import 'package:task/task2.1chat.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // *AppBar

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 29, 135, 86),
          title: Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          //*Button
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt_outlined, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.white))
          ],

            //*TabBar
          bottom: TabBar(
            tabs: [
              Text(
                "Chat",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "Updates",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "communities",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                "Call",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
            indicatorColor: Colors.yellow,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,

            // !indicator: BoxDecoration(borderRadius: BorderRadius.circular(10),
            // !color: Colors.white
            //! ),

            // ! isScrollable: true,
          ),
        ),
        body: TabBarView(children: [
          Chat(),
          Center(
              child: Text(
            "Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            "Calls",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            "Communities",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ]),
      ),
    );
  }
}
