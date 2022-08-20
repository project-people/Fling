import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  State<BodyLogin> createState() => _BodyLogin();
}

class _BodyLogin extends State<BodyLogin> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 60, bottom: 25),
                  child: Text( '플링이랑\n플리마켓 열어\n봐요 아아아', style:
                        Theme.of(context).textTheme.headline3?.copyWith(color:Colors.black, fontWeight: FontWeight.bold),
                  ),
              ),

              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.all(8),
                color: Colors.black12,
                child: TextFormField(
                  controller: idController,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '아이디를 입력해주세요.',

                    //suffixIcon 아이디 입력칸 이거 뭐지?
                    ),

                  validator: (val){
                    if(val!.isEmpty){
                    return "아이디를 입력해주세요!";
                    }
                  }
                ),
                ),

                Container(
                   margin: const EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  color: Colors.black12,
                  child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '비밀번호를 입력해주세요.',
                      ),
                      validator: (val){
                          if (val!.isEmpty){
                            return "비밀번호를 입력하세요!";
                          }
                      }
                ),
              ),


              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      shape: CircleBorder(),
                      value: true,
                      onChanged: (value) {
                        //자동 로그인
                      },
                    ),
                    const Text(
                        '자동 로그인'),
                    Checkbox(
                        shape: CircleBorder(),
                        value: false,
                        onChanged: (value) {
                          //아이디저장
                        }
                    ),
                    const Text('아이디 저장'),
                  ]
              ),

              // ignore: deprecated_member_use
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                height: 48,
                  child: ElevatedButton(
                        onPressed: () {
                             //to home screen
                          }  ,
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          elevation: 2.0,
                        ),
                        child: const Text(
                              '로그인',
                            style: TextStyle(
                            fontSize: 16,
                               color: Colors.white
                          ),
                        ),
                      )
              ),

              Row( //icon 넣어야함
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                    Expanded(
                       child: OutlinedButton(
                            style:  ButtonStyle(
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero))
                            ),
                            onPressed: () => {},
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/icons/naver_icon.png', width: 45, height: 45),
                                Spacer(),
                                const Text(
                                '네이버 로그인',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12)
                            ),
                              ]
                            ),
                            ),
                      ),

                  SizedBox(width: 3.0),
                  Expanded(
                    child:
                      OutlinedButton(
                          style:  ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                              ),
                              onPressed: () => {},
                        child: Row(
                            children: <Widget>[
                              Image.asset('assets/icons/kakaotalk_icon.png', width:45, height: 45 ),
                              Spacer(),
                              const Text(
                                  '카카오톡 로그인',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12)
                              ),
                            ]
                        ),
                      ),
                  ),
                ]
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('계정을 잃으셨나요?', style:
                  TextStyle(fontSize:12),
                  ),
                  TextButton(
                    child: const Text(
                      'Id 찾기',
                      style: TextStyle(
                          color: Colors.blue
                      ),
                    ),
                    onPressed: () {
                      //find id screen
                    },
                  ),
                  const Text('또는',style: TextStyle(fontSize: 12),),
                  TextButton(
                    child: const Text(
                      '비밀번호 찾기',
                      style: TextStyle(
                        fontSize: 12,
                          color: Colors.blue
                      ),
                    ),
                    onPressed: () {
                      //find password screen
                    },
                  )

                ],
              ),


              Container(
                  child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                              const Text(
                                 '아직 회원이 아니신가요? ',
                                   style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black12
                                ),
                              ),
                          TextButton(
                             child: const Text(
                              '회원가입',
                              style: TextStyle(
                             fontSize: 12,
                              color: Colors.black
                              )
                          ),
                             onPressed: () =>
                                Navigator.pushNamed(context, '/signup')
                    //move to sign up page_ Navigator.
                            )
                          ],
                        ),
                  margin: EdgeInsets.only(top: 60, bottom: 30),
              )
            ]
              ),
        );
  }
}