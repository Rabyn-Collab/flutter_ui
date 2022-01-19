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


List<Post> posts = [
  Post(
      title: 'Post 1',
      likes: 410,
      comments: 150,
      author: users[0],
      ImageUrl: 'assets/images/post0.jpg',
      location: 'location 1'
  ),
  Post(
      title: 'Post 2',
      likes: 200,
      comments: 250,
      author: users[1],
      ImageUrl: 'assets/images/post1.jpg',
      location: 'location 2'
  ),
  Post(
      title: 'Post 3',
      likes: 150,
      comments: 50,
      author: users[3],
      ImageUrl: 'assets/images/post2.jpg',
      location: 'location 3'
  ),
  Post(
      title: 'Post 4',
      likes: 500,
      comments: 600,
      author: users[4],
      ImageUrl: 'assets/images/post3.jpg',
      location: 'location 4'
  ),
  Post(
      title: 'Post 5',
      likes: 240,
      comments: 550,
      author: users[5],
      ImageUrl: 'assets/images/post4.jpg',
      location: 'location 5'
  ),
  Post(
      title: 'Post 1',
      likes: 410,
      comments: 150,
      author: users[0],
      ImageUrl: 'assets/images/post0.jpg',
      location: 'location 1'
  ),

];


List<User> users = [
  User(
      posts: [posts[0]],
      name: 'Angela',
      backgroundImageUrl: 'assets/images/user_background.jpg',
      followers: 50,
      following: 100,
      profileImageUrl: 'assets/images/user0.jpg'
  ),
  User(
      posts: [posts[0], posts[1]],
      name: 'John',
      backgroundImageUrl: 'assets/images/user_background.jpg',
      followers: 90,
      following: 120,
      profileImageUrl: 'assets/images/user1.jpg'
  ),
  User(
      posts: [posts[0], posts[1]],
      name: 'Simran',
      backgroundImageUrl: 'assets/images/user_background.jpg',
      followers: 20,
      following: 90,
      profileImageUrl: 'assets/images/user2.jpg'
  ),
  User(
      posts: [posts[0], posts[1]],
      name: 'Dev',
      backgroundImageUrl: 'assets/images/user_background.jpg',
      followers: 150,
      following: 200,
      profileImageUrl: 'assets/images/user3.jpg'
  ),
  User(
      posts: [posts[0], posts[1]],
      name: 'Savoye',
      backgroundImageUrl: 'assets/images/user_background.jpg',
      followers: 450,
      following: 500,
      profileImageUrl: 'assets/images/user4.jpg'
  ),
  User(
      posts: [posts[0], posts[1]],
      name: 'Deluca',
      backgroundImageUrl: 'assets/images/user_background.jpg',
      followers: 170,
      following: 250,
      profileImageUrl: 'assets/images/user5.jpg'
  ),

];