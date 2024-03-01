// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/image_constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            ImageConstants.loginBg,
            fit: BoxFit.fill,
          ),
          Container(
            color: Colors.black.withOpacity(0.8),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstants.kukuFm,
                  scale: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  ImageConstants.loginTxt,
                  scale: 1,
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Login for personalised listening"),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.phone_android,
                          size: 18,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Continue via phone",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        )
                      ],
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3))),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.red[800])),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
