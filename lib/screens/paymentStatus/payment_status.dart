import 'package:flutter/material.dart';

import 'package:thiranuitest/widgets/text_custom_widgets.dart';


class PaymentStatus extends StatefulWidget {
   const PaymentStatus({super.key, required this.text, required this.icon, required this.color,required this.child});
  final String text;
  final IconData icon;
  final Color color;
  final Widget child;

  @override
  State<PaymentStatus> createState() => _PaymentStatusState();
}

class _PaymentStatusState extends State<PaymentStatus> {
  @override
  void initState() {
 gotoHome(widget.child);
    super.initState();
  }
  
  Future gotoHome(Widget child)async{

   await Future.delayed(const Duration(seconds: 4));
   Navigator.push(context, MaterialPageRoute(builder: (context)=>child));
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[ SizedBox(
          width: 500,
          height: 300,
          child: Icon(widget.icon,size: 195,color: widget.color,)),
        const SizedBox(height: 20,),
        TextCustomStyle(textData: widget.text,textSize: 37,textWeight: FontWeight.bold,textAlign: TextAlign.center,),
        const SizedBox(height: 60,),
        // CustomButton(pressed: (){}, width: 330, height: 55, textstyle: TextCustomStyle(textData:buttontext))

        ]
      )),
    );
  }
}