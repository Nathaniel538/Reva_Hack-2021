// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:warehouse_management_system/LoginPage/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // home: FutureBuilder(
      //   future: _initialization,
      //   builder: (context, snapshot){
      //     if(snapshot.hasError)
      //       {
      //        print('Error ${snapshot.error.toString()}');
      //        return const Text("Something went wrong");
      //       }
      //     else if (snapshot.hasData)
      //     {
      //       return const LoginPage();
      //     }
      //     else {
      //       return const Center(
      //           child: CircularProgressIndicator()
      //       );
      //     }
      // if(snapshot.connectionState == ConnectionState.done)
      //   {
      //     return  LoginPage();
      //   }
      // return CircularProgressIndicator();
    );
  }
}
