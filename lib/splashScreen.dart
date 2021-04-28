import 'dart:async';

import 'package:flutter/material.dart';
import 'package:machinfy/home.dart';

class SplachScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home())));
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Center(
              child: Container(
                  width: width * 0.5,
                  height: height * 0.5,
                  child: Image.asset("images/machinfy.jpg")),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.2,
                  height: height * 0.4,
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.2,
                        height: height * 0.2,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "images/doaa.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Eng Doaa Mahmoud",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  width: width * 0.2,
                  height: height * 0.4,
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.2,
                        height: height * 0.2,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "images/sayed.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Eng Sayed A Omar",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  width: width * 0.2,
                  height: height * 0.4,
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.2,
                        height: height * 0.2,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "images/shady.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Eng Shady Nagy",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
