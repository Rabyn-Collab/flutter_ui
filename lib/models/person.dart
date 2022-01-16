import 'package:flutter/material.dart';



class Person{

 late String imageUrl;
 late String userName;
 late String message;
 late Color color;


Person({
   required this.imageUrl,
  required this.userName,
  required this.message,
  required this.color
});


}


List<Person> persons  = [
  Person(
      imageUrl: 'https://media.istockphoto.com/photos/portrait-of-smiling-mixed-race-woman-looking-at-camera-picture-id1319763830?b=1&k=20&m=1319763830&s=170667a&w=0&h=wE44n9yP1nrefeqv5DCl5mE3ouU01FNNHeZPR0yDCWA=',
      userName: 'Laurent',
      message: 'How about meeting tomorrow',
    color: Colors.green
  ),
  Person(
      imageUrl: 'https://media.istockphoto.com/photos/excited-woman-wearing-rainbow-cardigan-picture-id1327495437?b=1&k=20&m=1327495437&s=170667a&w=0&h=Vbl-XLyAnBoTkyGXXi-X1CFzuSHlNcn-dqB-sCosxFo=',
      userName: 'Tracy',
      message: 'I love that idea , it\'s great',
  color: Colors.purple
  ),

  Person(
      imageUrl: 'https://media.istockphoto.com/photos/smiling-mixed-race-mature-man-on-grey-background-picture-id1319763895?b=1&k=20&m=1319763895&s=170667a&w=0&h=jhqKyg62cQVZ-NjDQjpcenCdHDrprkN4caRjk4K76E8=',
      userName: 'Joe',
      message: 'Flutter just released 2.8 officially',
    color: Colors.amberAccent
  ),

  Person(
      imageUrl: 'https://media.istockphoto.com/photos/middle-aged-man-portrait-picture-id1285156699?b=1&k=20&m=1285156699&s=170667a&w=0&h=l8Bs_xHY2um7IUHKXj7szXvNDW5jMJmnLMuvQWO5vEo=',
      userName: 'Mark',
      message: 'It\'s totally make sense get some extra',
    color: Colors.pinkAccent
  ),
];