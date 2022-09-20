import 'package:flutter/material.dart';
import 'package:thiranuitest/constants/color_constants.dart';

import '../../widgets/textfieldCustom_widget.dart';

class FlightSearchScreen extends StatelessWidget {
   FlightSearchScreen({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: width,
                    height: height/3,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),fit: BoxFit.cover)
                    ),
                  ),
                    SizedBox(height: height/1.51,)
                ],
              ),
            
             Positioned(
              bottom:5 ,
               child: Container(
                  width: width,
                   height: height/1.41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200
                  ),
                 
                    
                  
                 ),
             ),
             
             Positioned(
              top: 40,
              left: 35,
               child: Container(
                width: 300,
                height: height,
                
                child: Column(
                  children: [
                   
                 CustomTextField(fromController:searchController ,hinttext: "Search flight",prefixicon: Icons.search,iconColor:whiteColor ,hinttextcolor: whiteColor,fillcolor: primaryColor,),
                 ListView.builder(itemCount: 5,
                  itemBuilder: (context,index){
                  return ListView(
                    children: [
Container(
  width: 200,
  height: 100,
  color: Colors.amber,
),
SizedBox(height: 30,)
                    ],
                  );
                 })
                  ],
                ),
               ),
             )

            ],
          )
        ],
      ),
    );
    
  }
}