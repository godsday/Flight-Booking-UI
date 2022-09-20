import 'package:flutter/material.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/screens/flightSearchScreen/flight_search_screen.dart';

import '../../../widgets/custom_animation_route.dart';
import '../../../widgets/textfieldCustom_widget.dart';

class OneWayWidget extends StatelessWidget {
  OneWayWidget({Key? key}) : super(key: key);
  final _fromController = TextEditingController();
  final _toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 10,
            child: CustomTextField(
              fromController: _fromController,
              hinttext: "From",
              prefixicon: Icons.flight_takeoff,
              iconColor: Colors.amber.shade700,
            )),
        Positioned(
            top: 90,
            child: CustomTextField(
              fromController: _toController,
              hinttext: "To",
              prefixicon: Icons.flight_land_outlined,
              iconColor: Colors.blue,
            )),
        Positioned(
          bottom: 90,
          right: 30,
          child: ClipOval(
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.amber.shade800,
                  boxShadow: const[
                     BoxShadow(
                        color: Colors.yellowAccent,
                        blurRadius: 13,
                        spreadRadius: 15)
                  ]),
              child: IconButton(onPressed:(){
               Navigator.push(context,CustomPageRoute(child:FlightSearchScreen() ));
              } ,
             icon:  Icon( Icons.swap_vert,
                color: whiteColor,
                size: 28,
              )),
            ),
          ),
        ),
      ],
    );
  }
}

