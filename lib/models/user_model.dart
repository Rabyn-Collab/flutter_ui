
  /*
 Create  User model ...
 String profileImageUrl,
  String backgroundImageUrl,
  String name,
  int following,
  int followers,
  List<Post> posts,
  */



  import 'package:flutter_ui/models/post_model.dart';

class User{

   late String profileImageUrl;
   late String backgroundImageUrl;
   late String name;
   late int following;
   late int followers;
  late  List<Post> posts;

  User({
     required this.posts,
    required this.name,
    required this.backgroundImageUrl,
    required this.followers,
    required this.following,
    required this.profileImageUrl
});


  }


