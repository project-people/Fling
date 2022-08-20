import 'package:flutter/material.dart';

class myProfile extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 119.0, left: 69.0, right: 69.0, bottom: 133.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('이름',style: TextStyle(color: Colors.black)),
                Text('aaa@gmail.com', style: TextStyle(color: Colors.black)) ,
              ]),
          Image.asset('assets/images/profile_image.png', width: 120, height: 120),
        ]
      ),
    );
  }
}