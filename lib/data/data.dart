/*

Create a Users list:
 'assets/images/user0.jpg'
 'assets/images/user1.jpg'
'assets/images/user2.jpg'
'assets/images/user3.jpg'
'assets/images/user4.jpg'
'assets/images/user5.jpg'
'assets/images/user6.jpg'

  backgroundImageUrl: 'assets/images/user_background.jpg',


Create list of Post :
imageUrl: 'assets/images/post0.jpg', 'assets/images/post1.jpg',
 'assets/images/post2.jpg','assets/images/post3.jpg','assets/images/post5.jpg'

post: 'Post 0', 'Post 1', 'Post 2', 'Post 3', 'Post 4', 'Post 5'
author: User()
location :

 */

 import 'package:flutter_ui/models/post_model.dart';
import 'package:flutter_ui/models/user_model.dart';

List<User> users = [
  User(userName: 'Angela', imageUrl: 'assets/images/user0.jpg'),
  User(userName: 'John', imageUrl: 'assets/images/user1.jpg'),
  User(userName: 'Michelle', imageUrl: 'assets/images/user2.jpg'),
  User(userName: 'Raymon', imageUrl: 'assets/images/user3.jpg'),
  User(userName: 'Tahir', imageUrl: 'assets/images/user4.jpg'),
  User(userName: 'Meena', imageUrl: 'assets/images/user5.jpg'),
];

List<Post> posts = [
   Post(comments: 250, title: 'Post 1', imageUrl: 'assets/images/post0.jpg', likes: 70, location: 'Location 1'),
   Post(comments: 150, title: 'Post 2', imageUrl: 'assets/images/post1.jpg', likes: 80, location: 'Location 2'),
   Post(comments: 80, title: 'Post 3', imageUrl: 'assets/images/post2.jpg', likes: 50, location: 'Location 3'),
   Post(comments: 70, title: 'Post 4', imageUrl: 'assets/images/post3.jpg', likes: 60, location: 'Location 4'),
   Post(comments: 120, title: 'Post 5', imageUrl: 'assets/images/post4.jpg', likes: 90, location: 'Location 5'),
   Post(comments: 300, title: 'Post 6', imageUrl: 'assets/images/post5.jpg', likes: 100, location: 'Location 6'),
];