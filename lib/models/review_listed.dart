import 'package:flutter/material.dart';

class ReviewListed {
  int postId;
  Widget profile;
  String nickname;
  DateTime createdT;
  Widget thumbnail;
  String title;
  String content;
  int like;
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
    this.like,
    this.saved,
    this.comment
);
}