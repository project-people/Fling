import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fling/screens/review/list_screen/components/filter.dart';
import 'package:fling/screens/review/list_screen/components/post_list.dart';

Widget postAdd = SvgPicture.asset('assets/icons/circle.svg', width: 54, height: 54);

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [Column(children: const <Widget>[
          Filter(),
          Padding(padding: EdgeInsets.only(top: 25)),
          Expanded(child: PostList())
    ]),
        Positioned(
            bottom: 28,
            right: 25,
            child: postAdd)]);
  }
}
