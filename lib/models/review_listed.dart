import 'package:flutter/material.dart';

class ReviewListed {
  int postId;
  Widget profile;
  String nickname;
  DateTime createdT;
  Widget thumbnail;
  String title;
  String content;
  Widget img;
  int saved;
  int comment;

  ReviewListed(
    @required this.postId,
    this.profile,
    this.nickname,
    this.createdT,
    this.thumbnail,
    this.title,
    this.content,
    this.img,
    this.saved,
    this.comment
);
}