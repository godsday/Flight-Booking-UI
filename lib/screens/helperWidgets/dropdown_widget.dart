import 'package:flutter/material.dart';

import '../../constants/dropdowm_list.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

String intialValue = "Highest Price";

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(alignment: Alignment.centerRight,isExpanded: true,icon: Icon(Icons.keyboard_arrow_down,color:Colors.amber.shade700 ),
          items: dropdownMenuItems,
          value: intialValue,
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                intialValue = newValue;
              });
            }
          }),
    );
  }
}
