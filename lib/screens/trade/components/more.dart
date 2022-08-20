import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.fromLTRB(sizeWidth * 0.376,
          sizeHeight * 0.012, sizeWidth * 0.376, sizeHeight * 0.012),
      width: sizeWidth * 0.872,
      height: sizeHeight * 0.052,
      color: const Color(0xffD9D9D9),
      child: Text("더보기",
          style: TextStyle(
              fontSize: sizeWidth * 0.0426,
              fontWeight: FontWeight.w400)),
    );
  }
}
