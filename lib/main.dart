import 'package:flutter/material.dart';
import 'package:thiranuitest/screens/onBoardScreen/onboard_screen.dart';



void main(){
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardScreen(),
    );
    
  }
}