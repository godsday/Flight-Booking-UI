import 'package:flutter/material.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';

import '../../widgets/textfield_custom_widget.dart';

class FlightSearchScreen extends StatelessWidget {
  FlightSearchScreen({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  List tripdata = [
    {
      "headline":"Business Trip to New York",
      "frmid": "MCL",
      "toid": "NYC",
      "frm": "jokarba",
      "to": "New York",
      "time": "1h 55m"
    },
    {
      "headline":"Lucas Trip to Bhushan",
      "frmid": "BSW",
      "toid": "AEV",
      "frm": "Borstow",
      "to": "Ashland",
      "time": "2h 55m"
    },
    {
      "headline":"Vaction in Maldives",
      "frmid": "CHLD",
      "toid": "DNY",
      "frm": "Cerritos",
      "to": "Downey",
      "time": "1h 35m"
    },
    {
      "headline":"Vacation in Danville",
      "frmid": "DNVL",
      "toid": "CMB",
      "frm": "Denville",
      "to": "Downey",
      "time": "1h 55m"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: width,
                      height: height / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/bb.jpg"),
                              fit: BoxFit.cover)),
                    ),
                     
                    SizedBox(
                      height: height / 1.51,
                    )
                  ],
                ),
               Container(
                          width: width,
                          height: height / 3,
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
                  bottom: 5,
                  child: Container(
                    width: width,
                    height: height / 1.41,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: CustomTextField(
                    fromController: searchController,
                    hinttext: "Search flight",
                    prefixicon: Icons.search,
                    iconColor: whiteColor,
                    hinttextcolor: whiteColor,
                    fillcolor: primaryColor,
                  ),
                ),
                Positioned(
                  top: 140,
                  right: 30,
                  child: SizedBox(
                      width: width - 60,
                      height: height,
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  width: width,
                                  height: height / 6.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: whiteColor),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextCustomStyle(
                                            textData:
                                                "${tripdata[index]["headline"]}",
                                            textSize: 17.0,
                                            textWeight: FontWeight.bold),
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextCustomStyle(
                                              textData:
                                                  "${tripdata[index]["frmid"]}",
                                              textSize: 22.0,
                                              textWeight: FontWeight.bold,
                                              textColor: Colors.orange.shade700,
                                            ),
                                            Icon(
                                              Icons.flight_land_sharp,
                                              color: Colors.blue.shade700,
                                              size: 29,
                                            ),
                                            TextCustomStyle(
                                              textData: "${tripdata[index]["toid"]}",
                                              textSize: 22.0,
                                              textWeight: FontWeight.bold,
                                              textColor: Colors.teal.shade900,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children:  [
                                            TextCustomStyle(
                                              textData:  "${tripdata[index]["frm"]}",
                                              textSize: 15,
                                              textWeight: FontWeight.normal,
                                              textColor: Colors.blueGrey,
                                            ),
                                            TextCustomStyle(
                                              textData: "${tripdata[index]["time"]}",
                                              textSize: 15,
                                              textWeight: FontWeight.bold,
                                              textColor: Colors.black,
                                            ),
                                            TextCustomStyle(
                                              textData:"${tripdata[index]["to"]}",
                                              textSize: 15,
                                              textWeight: FontWeight.normal,
                                              textColor: Colors.blueGrey,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                )
                              ],
                            );
                          })),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
