import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/body.dart';

/*void main() => runApp(MaterialApp(
    title: "Fling",
    initialRoute: '/',
    routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
    }
    ));*/

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              backgroundColor: Colors.grey,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/logo.svg'),
              ),
              actions: <Widget>[
              IconButton(
                //onPressed: () => Navigator.pushNamed(context, '/login'),
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/chat_alarm.svg')
              )
              ]),
      body: Body(),
    );
  }
}


/*AppBar buildAppBar() {
    return AppBar(
        backgroundColor: const Color(0xFF909090),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/logo.svg'),
        ),
        actions: <Widget>[
         IconButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              icon: SvgPicture.asset('assets/icons/chat_alarm.svg')
        )
        ]);
  }*/
