import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'package:fling/models/review_listed.dart';

List<ReviewListed> reviewList = [
  ReviewListed(
      0,
      SvgPicture.asset('assets/icons/circle.svg', width: 42, height: 42),
      '플링이',
      DateTime.now(),
      SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover),
      '즐거웠던 문현 플리마켓 후기',
      '설레임과 걱정이 공존하는 플리마켓을 앞두고 귀엽게 뽑아본 '
          '포스터들 너무 귀엽죠? 준비를 마치고 드디어 행사장으로! 오늘처럼...',
      13,
      6,
      6),
  ReviewListed(
      1,
      SvgPicture.asset('assets/icons/circle.svg', width: 42, height: 42),
      '플링이',
      DateTime(2022, 08, 14, 15, 00, 00),
      SvgPicture.asset('assets/images/section_2.svg', fit: BoxFit.cover),
      '즐거웠던 문현 플리마켓 후기',
      '설레임과 걱정이 공존하는 플리마켓을 앞두고 귀엽게 뽑아본 '
          '포스터들 너무 귀엽죠? 준비를 마치고 드디어 행사장으로! 오늘처럼...',
      11,
      5,
      5)
];

Widget imgLike = Image.asset('assets/icons/like.png', width: 29, height: 29);
Widget imgSaved = Image.asset('assets/icons/saved.png', width: 17, height: 22);
Widget imgComment =
    Image.asset('assets/icons/comment_1.png', width: 24, height: 22);

getFormettedTime(DateTime datetime) {
  if (DateTime.now().difference(datetime).inDays < 1) {
    return DateFormat('HH:mm').format(datetime);
  } else {
    return DateFormat('yyyy.MM.dd').format(datetime);
  }
}

Widget listviewBuilder() {
  return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: reviewList.length,
      itemBuilder: (BuildContext context, int index) {
        return frame(index);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 10.0,
            color: Color(0xFFEDEDED),
          ));
}

Widget Function(int index) frame = (index) {
  return Container(
    height: 390,
    width: 343,
    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
                padding: const EdgeInsets.only(right: 8),
                child: reviewList[index].profile),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(reviewList[index].nickname,
                  style: const TextStyle(fontSize: 13)),
              Text(getFormettedTime(reviewList[index].createdT),
                  style: const TextStyle(fontSize: 13))
            ])
          ],
        ),
        Container(
            padding: const EdgeInsets.fromLTRB(0, 13, 0, 13),
            height: 210,
            width: 343,
            child: reviewList[index].thumbnail),
        Text(reviewList[index].title, style: const TextStyle(fontSize: 19)),
        Text(reviewList[index].content,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13)),
        const Padding(padding: EdgeInsets.only(top: 14)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              imgLike,
              const Padding(padding: EdgeInsets.all(3)),
              Text(reviewList[index].like.toString())]),
            Row(
              children: [
                Row(children: [
                  imgSaved,
                  const Padding(padding: EdgeInsets.all(3)),
                  Text(reviewList[index].saved.toString()),
                  const Padding(padding: EdgeInsets.all(6)),
                  imgComment,
                  const Padding(padding: EdgeInsets.all(3)),
                  Text(reviewList[index].comment.toString())
                ])
              ],
            )
          ],
        )
      ],
    ),
  );
};

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listviewBuilder();
  }
}
