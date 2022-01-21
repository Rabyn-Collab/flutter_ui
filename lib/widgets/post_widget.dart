import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/data/data.dart';



class PostWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Following', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 5),),
             SizedBox(height: 10,),
              Container(
                 height: 95,
                width: double.infinity,
                   child: ListView.builder(
                     physics: BouncingScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                      itemCount: users.length,
                       itemBuilder: (context, index){
                       return  Container(
                         margin:  EdgeInsets.only(right: 15),
                         child: Column(
                           children: [
                             Container(
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(35),
                                 border: Border.all(color: Colors.blue, width: 2)
                               ),
                               child: CircleAvatar(
                                 radius: 30,
                                 backgroundImage: AssetImage(users[index].imageUrl),
                               ),
                             ),
                             SizedBox(height: 5,),
                             Text(users[index].userName)

                           ],
                         ),
                       );
                       }
                   ),
              ),
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric( horizontal: 15),
          child: Text('Posts', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 5),),
        ),
  SizedBox(height: 25,),
        CarouselSlider.builder(
          options: CarouselOptions(
            enlargeCenterPage: true,
            height: 400,
          ),
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    posts[index].imageUrl,
                    height: 500, fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 110,
                    color: Colors.black45,
                  ),
                )
              ],
            );
          }

        )


      ],
    );
  }
}
