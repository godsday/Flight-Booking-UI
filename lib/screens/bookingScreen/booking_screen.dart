import 'package:flutter/material.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/screens/flightSearchScreen/flight_search_screen.dart';
import 'package:thiranuitest/screens/helperWidgets/tabview_custom.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';
import 'bottom_price_container.dart';
import '../helperWidgets/dropdown_widget.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
         height: height,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: height / 2.4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/bb.jpg"),
                                fit: BoxFit.cover)),
                      ),
                   
                      const SizedBox(
                        height: 130,
                      )
                    ],
                  ),
                     Container(
                               width: width,
                        height: height / 2.4,
                        decoration:  BoxDecoration(
                         gradient: LinearGradient(colors: [
                        Colors.teal.shade900,
                        
                        Colors.black54
                        
                         ],
                         begin:Alignment.topLeft,
                         end: Alignment.bottomRight)
              
                        )
              
                      ),
              
                   Positioned(
                    top: 40,
                    left: 25,
                    child: TextCustomStyle(
                      textData: "Let's  Book Your ",
                      textSize: 27.0,
                      textWeight: FontWeight.bold,
                      textColor: whiteColor,
                    ),
                  ),
                  Positioned(
                      top: 40,
                      right: 25,
                      child: CircleAvatar(
                        backgroundColor: primaryColor,
                        child: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          FlightSearchScreen()));
                            }),
                      )),
                  Positioned(
                    top: 80,
                    left: 25,
                    child: Row(
                      children:  [
                        TextCustomStyle(
                            textData: "Flight",
                            textSize: 27.0,
                            textWeight: FontWeight.bold,
                            textColor: whiteColor),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 83,
                    left: 97,
                    child: Icon(
                      Icons.flight,
                      color: Colors.cyan,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 22,
                    child: Container(
                      width: width - 44,
                      height: height / 2 - 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 9,
                            spreadRadius: .1,
                          )
                        ],
                      ),
                      child: const TabBarWidget(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    TextCustomStyle(
                      textData: "Sort By",
                      textSize: 18.0,
                      textWeight: FontWeight.bold,
                      textColor: Colors.blueGrey.shade300,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: whiteColor),
                          borderRadius: BorderRadius.circular(20),
                          color: whiteColor),
                      child: const DropDownWidget(),
                    )
                  ],
                ),
              ),
           const  SizedBox(height: 5,),
              const BottomPriceContainer()
            ],
          ),
        ),
      ),
    );
  }
}
