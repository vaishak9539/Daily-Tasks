import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  var secureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: SizedBox(
          height: 50,
          width: 300,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "enter password",
              suffix: IconButton(onPressed: (){
               setState(() {
                  secureText=!secureText;
               });
              },
               icon: Icon(secureText? Icons.visibility_off :Icons.visibility)),
              border: OutlineInputBorder()),
              obscureText: secureText,
          ),
          
        ),
      )
    );
  }
}