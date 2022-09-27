import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:untitled/onbord.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
       // animationDuration: const Duration(days: 0,hours: 0,minutes: 0,seconds: 10,milliseconds: 0,microseconds: 0),
        splash: Image.asset('assets/images/coffeelogo.png',width: 200,height: 200,),
        nextScreen: const Onboard(),
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.white
    );
  }
}
