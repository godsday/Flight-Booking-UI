

// import 'package:flutter/material.dart';

// class Fadetrasiiton extends StatefulWidget  {
//   const Fadetrasiiton({Key? key}) : super(key: key);

//   @override
//   State<Fadetrasiiton> createState() => _FadetrasiitonState();
// }

// class _FadetrasiitonState extends State<Fadetrasiiton> with SingleTickerProviderStateMixin{

// late AnimationController _controller;
// late Animation<double> _animation;

//   @override
//   void initState() {

//     super.initState();
//     _controller=AnimationController(vsync: this,duration: const Duration(seconds: 3))..repeat(reverse: true);
//    _animation=CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _controller.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Fadetrasiiton()
//   }
// }