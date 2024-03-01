import 'package:flutter/material.dart';
import 'package:kuku_fm/core/image_constants.dart';
import 'package:kuku_fm/view/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.kukuFm,
              scale: 1.5,
            ),
            SizedBox(
              height: 4,
            ),
            Image.asset(
              ImageConstants.loginTxt,
              scale: 1.7,
            ),
          ],
        ),
      ),
    );
  }
}
