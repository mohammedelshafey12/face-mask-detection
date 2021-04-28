import 'package:flutter/material.dart';
import 'package:machinfy/DetailsContainer.dart';
import 'package:machinfy/ReadMoreContainer.dart';
import 'package:process_run/shell_run.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var shell = Shell();
    return Material(
      child: Scaffold(
        backgroundColor: Color(0xffff1f7f0),
        body: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Center(child: ReadMoreContainer(width: width, heigh: height)),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailsContainer(
                    text: "About Machinfy",
                    color: Colors.white,
                    heigh: height,
                    width: width,
                    image: "images/machinfy.jpg",
                  ),
                  DetailsContainer(
                    text: "About Us",
                    color: Colors.white,
                    heigh: height,
                    width: width,
                    image: "images/about.png",
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailsContainer(
                    text: "Other Projects",
                    color: Colors.white,
                    heigh: height,
                    width: width,
                    image: "images/project.png",
                  ),
                  DetailsContainer(
                    text: "Contact with Us",
                    color: Colors.white,
                    heigh: height,
                    width: width,
                    image: "images/phone.png",
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            // ignore: deprecated_member_use
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.07,
                width: width * 0.8,
                child: FlatButton(
                  color: Colors.black,
                  onPressed: () async {
                    await shell.run('''
# Display dart version

cd C:/
cd C:/Users/Elshafey/Face-Mask-Detection
python detect_mask_video.py
# Display pub version
#start cmd.exe

  ''');
                  },
                  child: Center(
                    child: Text(
                      "Use App Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
