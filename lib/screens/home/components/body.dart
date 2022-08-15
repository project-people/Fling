import 'package:flutter/material.dart';

import 'package:fling/screens/home/components/category.dart';
import 'package:fling/screens/home/components/fleamarket.dart';
import 'package:fling/screens/home/components/recommned.dart';
import 'package:fling/screens/home/components/review.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(
      children: const <Widget>[
        Recommend(),
        Fleamarket(),
        //Category(),
        Review()
      ],
    ));
  }
}