

/*
Create Post Model
 String imageUrl;
   User author;
  String title;
  String location;
  int likes;
   int comments;
 */



import 'package:flutter_ui/models/user_model.dart';

class Post{


 late String ImageUrl;
 late User author;
 late String title;
 late String location;
 late int likes;
 late int comments;


 Post({
   required this.title,
   required this.likes,
   required this.comments,
   required this.author,
   required this.ImageUrl,
   required this.location
});



}