import 'package:flutter/material.dart';

import 'package:thiranuitest/widgets/buttonCustom_widget.dart';
import 'package:thiranuitest/widgets/textCustom_widgets.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bg2.jpg"),fit: BoxFit.cover)
            ),
          ),
          Positioned(
            bottom:20,
            left: 40,
            child: Image(image: AssetImage("assets/images/trvel 1.png"))),
          Positioned(
            top: 45,
            left: 20,
            child: TextCustomStyle(textData: "Find And Book\nA Great Experience", textSize: 33.0, textWeight: FontWeight.bold,textColor: Colors.white,))
         , Positioned(
            top: 145,
            left: 20,
            child: TextCustomStyle(textData: "Going forward after a pandemic that \n devasated the online industry ", textSize: 17.0, textWeight: FontWeight.normal,textColor: Colors.grey,))
       
         , Positioned(
            top: 245,
            left: 20,
            child: CustomButton(text: "Get Started", pressed: (){
              print("object");
            }, width: 140, height: 50,color: Colors.orange,))
        ],

        
      ),
    );
    
  }
}
