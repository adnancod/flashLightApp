import 'dart:async';

import 'package:flutter/material.dart';
import 'package:torch_app/screens/torch_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (comtext)=> TorchScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/splashimage.jpg',
          fit: BoxFit.fitHeight,height: MediaQuery.of(context).size.height,
          opacity: AlwaysStoppedAnimation(0.8),),
      ),
    );
  }
}
