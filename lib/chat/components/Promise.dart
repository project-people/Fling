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
          title: const Text("플리마켓 약속하기",
              style: TextStyle(color: Color(0xff191919))),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: sizeHeight * 0.043),
              Text("플리마켓 시간",
                  style: TextStyle(
                      fontSize: sizeWidth * 0.037,
                      fontWeight: FontWeight.w700)),
              SizedBox(height: sizeHeight * 0.006),
              Container(
                width: sizeWidth * 0.872,
                height: sizeWidth * 0.138,
                color: const Color(0xffF1F1F5),
                padding: EdgeInsets.only(
                    left: sizeWidth * 0.032,
                    bottom: sizeWidth * 0.004,
                    right: sizeWidth * 0.058),
                child: Row(
                  children: [
                    Text("언마리엄나ㅣㄹ;엄",
                        style: TextStyle(
                            color: const Color(0xff191919),
                            fontSize: sizeWidth * 0.037,
                            fontWeight: FontWeight.w400)),
                    Icon()
                  ],
                ),
              ),
              SizedBox(height: sizeHeight * 0.027),
              Text("플리마켓 전 알림 설정",
                  style: TextStyle(
                      fontSize: sizeWidth * 0.037,
                      fontWeight: FontWeight.w700)),
              SizedBox(height: sizeHeight * 0.006),
              Container(
                  width: sizeWidth * 0.872,
                  height: sizeWidth * 0.138,
                  color: const Color(0xffF1F1F5)),
              SizedBox(height: sizeHeight * 0.058),
              Container(
                width: sizeWidth * 0.872,
                height: sizeWidth * 0.138,
                color: const Color(0xff909090),
                child: Center(
                  child: Text("완료",
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: sizeWidth * 0.037,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ));
  }
}
