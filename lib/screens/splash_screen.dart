import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ra7al/screens/home_screen.dart';
import 'package:ra7al/screens/scan.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Future.delayed(Duration(seconds: 5),(){
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //     builder:(_) {
    //       return HomeScreen();
    //     },));
    // });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
          child: Image.asset('assets/images/logo.png',

          )),
      backgroundColor: Colors.black54,
      // pageTransitionType: PageTransitionType.scale,
      splashIconSize: 500,
      duration: 3000,
      nextScreen:HomeScreen(),
    );

  }
}
