/*import 'package:flutter/material.dart';

List<String> agreement = ['만 14세 이상입니다.', '이용약관', '개인정보수집 및 이용동의', '이벤트,쿠폰,앱푸시 및 SMS 등 수신'];
List<String> sel = ['(필수)', '(선택)'];

class Agree extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
              width: 654, height: 420,
              padding: EdgeInsets.fromLTRB(24,30,0,30),
              margin: EdgeInsets.symmetric(horizontal: 48, vertical: 44),
              decoration: BoxDecoration(border:Border.all(width:2.0), color:Color(0xffD9D9D9)),
            child: Row(
                children: [
                    Container(
                        height: 104,
                        decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        border: Border.all(width:2.0, color: Color(0xffD9D9D9))),
                      child: Row( children: [
                        const Text(
                            '약관 동의',
                          style: TextStyle(color: Color(0xff191919),
                          fontSize: 28.0,
                          fontWeight: FontWeight.w400 ),
                        ),

                            Text('전체 동의', style:TextStyle(color: Color(0xff909090),
                            fontSize: 28.0,
                            fontWeight: FontWeight.w400),
                            ),

                            Checkbox(
                              value:false,
                              onChanged: (value){
                              //밑에 항목 전부 체크
                              }
                          )
                        ],
                      ),
                    ),

              Row(children: [
                      const Text(
                      '만 14세 이상입니다.',
                      style: TextStyle(color: Color(0xff191919),
                          fontSize: 28.0,
                          fontWeight: FontWeight.w400
                      )
                  ),
                    const Text(
                      '(필수)',
                      style: TextStyle(color: Color(0xffE29D9D),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400
                      )
                  ),
                    Checkbox(
                      value:false,
                      onChanged: (value){
                        //필수
                      }
                  )
                ],

              ),


                  Row(
                      children: [
                      const Text(
                      '이용약관',
                        style: TextStyle(color: Color(0xff191919),
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400
                        )
                      ),
                      const Text(
                        '(필수)',
                        style: TextStyle(color: Color(0xffE29D9D),
                        fontSize: 24.0,
                            fontWeight: FontWeight.w400
                        )
                      ),
                        Checkbox(
                          value:false,
                          onChanged: (value){
                                //필수
                          })
                      ],
                  ),


                  Row(
                      children: [
                    const Text(
                      '개인정보수집 및 이용동의',
                      style: TextStyle(color: Color(0xff191919),
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400
                      )
                      ),
                      const Text(
                          '(필수)',
                            style: TextStyle(color: Color(0xffE29D9D),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400
                          )
                      ),
                        Checkbox(
                            value:false,
                            onChanged: (value){
                                   //필수
                              }
                        )
                    ],
                  ),

                  Row(
                      children: [
                      const Text(
                          '이벤트,쿠폰,앱푸시 및 SMS 등 수신',
                            style: TextStyle(color: Color(0xff191919),
                            fontSize: 28.0,
                            fontWeight: FontWeight.w400
                          )
                        ),
                      const Text(
                            '(선택)',
                            style: TextStyle(color: Color(0xff999999),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400
                            )
                        ),
                      Checkbox(
                          value:false,
                          onChanged: (value){
                              //선택
                          }
                      )
                    ],
                  ),
                  ],
                ),
            );
        }
}*/