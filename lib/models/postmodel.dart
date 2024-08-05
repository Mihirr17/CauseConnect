import 'dart:io';

import 'package:ltp/models/usermodel.dart';

class PostModel {
  UserModel user = UserModel(
      name: 'Himanshu S',
      bio: 'Cause Connect Contributor',
      profileImage:
          'https://nurserynisarga.in/wp-content/uploads/2021/03/Green-Pothos-01.webp',
      bannerImage: '');
  String tweetText = '';
  File? tweetImage;
  List<String> likes = [];
  List<String> comments = [];
  List<String> retweets = [];
  String? uploadTime;
}
