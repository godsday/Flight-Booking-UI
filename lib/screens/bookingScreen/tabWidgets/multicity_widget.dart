import 'package:flutter/material.dart';
import 'package:thiranuitest/widgets/textCustom_widgets.dart';

class MultiCityWidget extends StatelessWidget {
  const MultiCityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 50,
        ),
        Icon(
          Icons.connecting_airports,
          size: 30,
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 38.0),
          child: TextCustomStyle(
            textData: "Comming Soon",
            textSize: 35.0,
            textWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
