import 'package:flutter/material.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import '../bookingScreen/tabWidgets/multicity_widget.dart';
import '../bookingScreen/tabWidgets/oneway_widget.dart';
import '../bookingScreen/tabWidgets/roundtrip_widget.dart';


class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  TabBarWidgetState createState() => TabBarWidgetState();
}

class TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
 late TabController _tabController;

 @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
         
          shrinkWrap: true,
          children: [
            Container(
              height: 85,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(isScrollable: false,
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color:primaryColor,
                ),
                labelColor: whiteColor,
                unselectedLabelColor: blackColor,
                tabs: const [
                  Tab(
                    text: 'One Way',
                  ),
        
                  Tab(
                    text: 'Round Trip',
                  ),
                   Tab(
                    text: 'Multi-City',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
              OneWayWidget(),
                    
                 const RoundTripWidget(),
                const MultiCityWidget(),
                  
                  
                ],
              ),
            ),
          ],
        )
    );
      
  }
}