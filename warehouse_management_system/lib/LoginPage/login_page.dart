// import 'dart:math';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warehouse_management_system/Employee/dashboard.dart';
import 'package:warehouse_management_system/LoginPage/forgot_password.dart';
import 'package:warehouse_management_system/Manager/dashboard_m.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int selectedValue = 1;
  bool x = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purpleAccent, Colors.orangeAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Warehouse Manager', style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: Stack(
            children: <Widget>[
          Container(
            child: SingleChildScrollView(
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  color: Colors.transparent,
                  child: Center(
                    child: Container(
                      height: 510,
                      width: 400,
                      child: Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(50.0),
                            child: Text(
                              "Login Page",
                              style: TextStyle(fontSize: 50, color: Colors.white),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                                border: OutlineInputBorder(),
                                labelText: 'Username',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)
                                ),
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                          // Center(
                          //   child: Row(
                          //     children: [
                          //       Padding(
                          //
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: ElevatedButton(
                          //             onPressed: () {
                          //               Navigator.push(
                          //                   context,
                          //                   MaterialPageRoute(builder: (context) => const ForgotPassword())
                          //               );
                          //             }, child:
                          //                 Text("forgot Password"),),
                          //       ),
                          //       Padding(
                          //         padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                          //         child: ElevatedButton(
                          //             onPressed: () {
                          //               DatabaseReference _testRef = FirebaseDatabase.instance.reference().child("Test");
                          //               _testRef.set("hello World ${Random().nextInt(100)}");
                          //               Navigator.push(
                          //                 context,
                          //                 MaterialPageRoute(builder: (context) => const DashBoard())
                          //               );
                          //             }, child: Text("Submit")),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Card(
                            color: Colors.transparent,
                            child: RadioListTile<int>(
                              value: 0,
                              groupValue: selectedValue,
                              title: Text(
                                "Manager",
                                style: TextStyle(color: Colors.white),
                              ),
                              // secondary: OutlinedButton(
                              //   child: Text("Submit"),
                              //   onPressed: (){
                              //
                              //   },
                              // ),
                              activeColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = 0;
                                  x = true;
                                });
                              },
                            ),
                          ),
                          Card(
                            color: Colors.transparent,
                            child: RadioListTile<int>(
                              value: 1,
                              groupValue: selectedValue,
                              title: Text(
                                "Employee",
                                style: TextStyle(color: Colors.white),
                              ),
                              // secondary: OutlinedButton(
                              //   child: Text("Submit"),
                              //   onPressed: (){
                              //
                              //   },
                              // ),
                              activeColor: Colors.white,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = 1;
                                  x = false;
                                });
                              },
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ForgotPassword()));
                                    },
                                    child: Text("forgot Password"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        // DatabaseReference _testRef = FirebaseDatabase
                                        //     .instance
                                        //     .reference()
                                        //     .child("Test");
                                        // _testRef
                                        //     .set("hello World ${Random().nextInt(100)}");
                                        if (x == false) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DashBoard()));
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DashBoardM()));
                                        }
                                      },
                                      child: Text("Submit")),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
