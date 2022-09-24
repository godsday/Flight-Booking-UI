import 'package:flutter/material.dart';
import 'package:thiranuitest/widgets/button_custom_widget.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';


class PaymentStatus extends StatefulWidget {
   PaymentStatus({super.key, required this.text, required this.icon, required this.color});
  final String text;
  final IconData icon;
  final Color color;

  @override
  State<PaymentStatus> createState() => _PaymentStatusState();
}

class _PaymentStatusState extends State<PaymentStatus> {
  // final String buttontext;
  Future gotoHome(Widget child)async{

   await Future.delayed(Duration(seconds: 3000));
   Navigator.push(context, MaterialPageRoute(builder: (context)=>child));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          children:[ SizedBox(
            width: 500,
            height: 300,
            child: Icon(widget.icon,size: 195,color: widget.color,)),
          const SizedBox(height: 20,),
          TextCustomStyle(textData: widget.text,textSize: 34,textWeight: FontWeight.bold,),
          const SizedBox(height: 60,),
          // CustomButton(pressed: (){}, width: 330, height: 55, textstyle: TextCustomStyle(textData:buttontext))

          ]
        ),
      )),
    );
  }
}