import 'package:flutter/material.dart';

class Promise extends StatefulWidget {
  const Promise({Key? key}) : super(key: key);

  @override
  State<Promise> createState() => _PromiseState();
}

class _PromiseState extends State<Promise> {
  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          title: const Text("장소 정하기"),
        ),
        body: Column(
          children: [
            SizedBox(height: sizeHeight*0.043),
            Text("플리마켓 시간",style: TextStyle(fontSize: 1)),
            SizedBox(height: sizeHeight*0.006),
            Container(),
            SizedBox(height: sizeHeight*0.027),
            Text("플리마켓 시간"),
            SizedBox(height: sizeHeight*0.006),
            Container(child: Text("완료"),),
          ],
        ));
  }
}
