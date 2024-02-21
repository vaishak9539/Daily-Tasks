import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var name = TextEditingController();
  var email = TextEditingController();
  var phnumber = TextEditingController();
  var gender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 40),
            
                //* 3 TextFormField
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Name",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SizedBox(
                        width: 260,
                        height: 50,
                        child: TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                              labelText: "Enter your name",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Text(
                        "Email Id",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        width: 260,
                        height: 50,
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                              labelText: "Enter your Email Id",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Ph Number",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 260,
                      height: 50,
                      child: TextFormField(
                        controller: phnumber,
                        decoration: InputDecoration(
                            labelText: "Enter your Ph Number",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
              ),
            
              //* RadioButton
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Genter",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      child: RadioListTile(
                          title: Text("male"),
                          value: "male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          }),
                    ),
                    SizedBox(
                      width: 180,
                      child: RadioListTile(
                          title: Text("female"),
                          value: "female",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          }),
                    ),
                    SizedBox(
                      width: 180,
                      child: RadioListTile(
                          title: Text("other"),
                          value: "other",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            
              //* TextFormField
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "State",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      width: 260,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Select your state",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
            
              //* 2 InkWell Button
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 100),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: (){
                    print(name.text);
                    print(email.text);
                    print(phnumber.text);
                    print(gender);
                    }, 
                    child: Text("Submit")),
            
                     ElevatedButton(onPressed: (){
                      name.clear();
                      email.clear();
                      phnumber.clear();
                     },
                      child: Text("cancel"))
                  ],
                ),
              ),
             
            ]),
          ),
        ),
      ),
    );
  }
}
