// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kuku_fm/core/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      toolbarHeight: 80,
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: ColorConstants.bottomnavGrey,
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: SizedBox(
                height: 38,
                child: ElevatedButton(
                  onPressed: () {},
                  child: TextFormField(
                    cursorColor: ColorConstants.primaryWhite,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: ColorConstants.bottomnavGrey,
                        ),
                        hintText: "Search on Kuku FM",
                        suffixIcon: Icon(
                          Icons.mic_none,
                          color: ColorConstants.bottomnavGrey,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 50, 44, 44),
          radius: 18,
          child: Text(
            "/A",
            style: TextStyle(color: ColorConstants.primaryWhite),
          ),
        ),
        SizedBox(
          width: 15,
        )
      ],
    ));
  }
}
