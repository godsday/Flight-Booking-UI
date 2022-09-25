import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required TextEditingController fromController,
    required this.hinttext,
    required this.prefixicon,  this.iconColor, this.hinttextcolor, this.fillcolor,
  })  : _fromController = fromController,
        super(key: key);

  final TextEditingController _fromController;
  final String hinttext;
  final IconData prefixicon;
  final Color? iconColor;
  final Color? hinttextcolor;
  final Color? fillcolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 330,
      child: TextField(
          controller: _fromController,
          decoration: InputDecoration(disabledBorder: InputBorder.none,
              hintText: hinttext,filled:true,fillColor:fillcolor,
              hintStyle: TextStyle(color: hinttextcolor),
              prefixIcon: Icon(prefixicon,color:iconColor ,), 
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)))),
    );
  }
}
