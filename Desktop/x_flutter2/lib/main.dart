import 'package:flutter/material.dart';
import 'package:x_flutter2/login.dart';
import 'package:x_flutter2/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Text("Welcome", style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
               // light
              ),),
              ), 
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top:20, bottom: 60),
                child: Text("My Shop",style: TextStyle(
              fontSize: 23,
              color: Colors.red,
              fontWeight: FontWeight.normal, // light
              ),),
              ),
            ),
            Image.asset('assets/shop.png'), 
             SizedBox(height: 90,),
             TextButton(
              style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                primary:Colors.white,
                backgroundColor: Colors.blue,
                ),            
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
              child: Text('Login')),
              SizedBox(height: 20,),  
              TextButton(
              style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                primary:Colors.white,
                backgroundColor: Colors.blue,
                ),            
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
              child: Text('SignUp')),
          ],
        ), 
    )
    );
  }
}
