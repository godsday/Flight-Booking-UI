import 'package:flutter/material.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';

class RoundTripWidget extends StatelessWidget {
  const RoundTripWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 50,
        ),
        Icon(
          Icons.airplanemode_inactive,
          size: 35,
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 45.0),
          child: TextCustomStyle(
              textData: "Flight Are Busy",
              textSize: 35,
              textWeight: FontWeight.bold),
        )
      ],
    );
  }
}
