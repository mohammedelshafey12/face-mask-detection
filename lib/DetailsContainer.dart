import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({
    Key key,
    @required this.heigh,
    @required this.width,
    this.Count,
    this.text,
    this.image,
    this.color,
  }) : super(key: key);

  final double heigh;
  final double width;
  final String image;
  final String Count;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigh * 0.2,
      width: width * 0.35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          boxShadow: [BoxShadow(color: Colors.black)]),
      child: Column(
        children: <Widget>[
          Image.asset(
            "${image}",
            width: width * 0.15,
            height: heigh * 0.13,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${text}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "Cairo",
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
