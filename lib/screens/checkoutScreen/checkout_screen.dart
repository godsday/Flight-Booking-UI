import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:thiranuitest/constants/color_constants.dart';
import 'package:thiranuitest/screens/bookingScreen/booking_screen.dart';
import 'package:thiranuitest/screens/checkoutScreen/bottom_container.dart';
import 'package:thiranuitest/screens/paymentStatus/payment_status.dart';
import 'package:thiranuitest/widgets/button_custom_widget.dart';
import 'package:thiranuitest/widgets/text_custom_widgets.dart';

import 'middle_container.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _razorpay = Razorpay();

  List paymenticons = [
    "https://mpng.subpng.com/20180802/xri/kisspng-logo-mastercard-vector-graphics-font-visa-mastercard-logo-png-photo-png-arts-5b634298cd58d5.9008352515332317688411.jpg",
    "https://logos-download.com/wp-content/uploads/2016/03/PayPal_Logo_2014-1536x1520.png",
    "https://i.pinimg.com/564x/f6/60/a6/f660a637c5ea8ef2b00218bac3479c82.jpg",
    "https://www.ebuyer.com/blog/wp-content/uploads/2013/11/bitcoin-logo-1000_0.jpg",
  ];
  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response)async {
    gotoHome();
   await Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const BookingScreen()), (route) => false);
  }

  void _handlePaymentError(PaymentFailureResponse response) async {
    gotoHome();
   await Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => CheckoutScreen()));
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(response.walletName ?? "")));
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  // createOrder(){
  //   String key = "rzp_test_WNox17kjHIMdWn";
  //   String serect ="DIJ2vUeqLEFMEZjObklj";

  // }
  var options = {
    'key': "rzp_test_WNox17kjHIMdWn",
    'amount': 5000, //in the smallest currency sub-unit.
    'name': 'FLEW',
    'description': 'to New York',
    'timeout': 60, // in seconds
    'prefill': {'contact': '8086617703', 'email': 'rafikkvavoor@gmail.com'},
    'modal': {
      // 'backdropclose':true ,
      //'handleback':false,
      //  'escape':true,
      'confirm_close': true
    }
  };
  option() {
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          color: blackColor,
        ),
        title: const TextCustomStyle(
          textData: "Checkout",
          textSize: 26.0,
          textWeight: FontWeight.bold,
          textColor: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width - 20,
                height: height / 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white70,
                ),
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: width / 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: whiteColor),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CachedNetworkImage(
                                imageUrl: paymenticons[index],
                                placeholder: (context, url) =>
                                    Shimmer.fromColors(
                                        baseColor: Colors.grey.shade300,
                                        highlightColor: Colors.white38,
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        )),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        )),
              ),
              const SizedBox(
                height: 20,
              ),
              MiddleContainer(height: height),
              const SizedBox(
                height: 20,
              ),
              BottomContainer(height: height, width: width),
              const SizedBox(
                height: 20,
              ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //       backgroundColor: primaryColor,
              //       fixedSize: const Size(330, 55),
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(15))),
              //   onPressed: () {

              //   },
              //   child:  TextCustomStyle(
              //       textData: "Procced",
              //       textSize: 18.0,
              //       textWeight: FontWeight.bold,textColor: whiteColor),
              // )
              CustomButton(
                pressed: () {
                  setState(() {
                    _razorpay.open(options);
                  });
                },
                width: 330,
                height: 55,
                textstyle: TextCustomStyle(
                    textData: "Proceed", textColor: whiteColor, textSize: 22),
                color: primaryColor,
              )
            ],
          ),
        ),
      )),
    );
  }

  Future gotoHome() async {
    await Future.delayed(const Duration(seconds: 5000));
  }
}
