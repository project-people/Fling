import 'package:fling/screens/signin/signup_screen.dart';
import 'package:flutter/material.dart';
import 'components/body_login.dart';

void main() => runApp(MaterialApp(
    title: "Fling",
    initialRoute: '/',
    routes: {
      '/': (context) => LoginScreen(),
      '/signup':(context) => SignUpScreen()
    }
));

class LoginScreen extends StatelessWidget{
  static const String_title = '로그인';

  @override
  Widget build(BuildContext context){
   return Scaffold(
        appBar: AppBar(title: const Text(String_title, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey),
          body: BodyLogin(),
      );
  }
}
