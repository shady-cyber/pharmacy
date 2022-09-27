import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/homescreen.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}



class _OnboardState extends State<Onboard> {
  double _opacity = 0.1;


  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(opacity: _opacity, duration: const Duration(seconds: 3),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.pink,
      ),

        //_opacity = _opacity == 0.1 ? 1 : 0.1;


      // AnimatedSplashScreen(
      //   duration: 6000,
      //   // animationDuration: const Duration(days: 0,hours: 0,minutes: 0,seconds: 10,milliseconds: 0,microseconds: 0),
      //   splash: const Text('Welcome To ',style: TextStyle(color: Colors.white, fontSize: 40,)),
      //   nextScreen: const HomeScreen(),
      //   splashTransition: SplashTransition.sizeTransition,
      //   pageTransitionType: PageTransitionType.fade,
      //   backgroundColor: Colors.purpleAccent,
      // ),
    );
  }
}
