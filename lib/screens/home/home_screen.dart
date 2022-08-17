<<<<<<< HEAD
import 'package:fling/chat/chat_mainpage.dart';
=======
>>>>>>> bbea957934fc7e9c31367f18f7b53ee8e07b06ae
import 'package:fling/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppBar buildAppBar() {
      return AppBar(
          backgroundColor: const Color(0xFF909090),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/logo.svg'),
          ),
          actions: <Widget>[
            IconButton(
<<<<<<< HEAD
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ChatMain()));
                },
=======
                onPressed: () {},
>>>>>>> bbea957934fc7e9c31367f18f7b53ee8e07b06ae
                icon: SvgPicture.asset('assets/icons/chat_alarm.svg'))
          ]);
    }

    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}
