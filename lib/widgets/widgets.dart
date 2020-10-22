import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 25,
      ),
      children: <TextSpan>[
        TextSpan(
            text: 'Crack',
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black)),
        TextSpan(
            text: 'NDA',
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF5D686B),)),
      ],
    ),
  );
}
Widget appBar1(BuildContext context,String one, String two) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 25,
      ),
      children: <TextSpan>[
        TextSpan(
            text: one,
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black)),
        TextSpan(
            text: two,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
      ],
    ),
  );
}

Widget blueButton({BuildContext context, String label, buttonWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(25)),
    alignment: Alignment.center,
    width: buttonWidth != null ? buttonWidth :  MediaQuery.of(context).size.width - 48,
    child: Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 15.5),
    ),
  );
}
