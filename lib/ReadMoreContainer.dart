import 'package:flutter/material.dart';

class ReadMoreContainer extends StatelessWidget {
  const ReadMoreContainer({
    Key key,
    @required this.width,
    @required this.heigh,
  }) : super(key: key);

  final double width;
  final double heigh;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.75,
      height: heigh * 0.22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xfffb4d9d2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/covid1.png"),
          SizedBox(
            width: width * 0.2,
          ),
          Center(
            child: Container(
              height: heigh * 0.8,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20),
                    child: Text(
                      "تعرف علي استخدام  التطبيق",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "Cairo"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "لمعرفه هل تلبس الكمامه ام لا ؟",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Cairo",
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 10),
                    child:FlatButton(onPressed: (){
                    }, child: Center(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text("تعرف علي المزيد",style: TextStyle(color: Colors.white
                              ,fontFamily: "Cairo",
                            ),
                            ),
                          ),
                        )
                    ),
                      shape:new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      color: Color(0xfff00332a),
                    ),
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
