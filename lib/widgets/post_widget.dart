import 'package:carousel_slider/carousel_slider.dart';
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
                 height: 100,
                width: double.infinity,
                   child: ListView.builder(
                     physics: BouncingScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                      itemCount: users.length,
                       itemBuilder: (context, index){
                       return Container(
                         margin: EdgeInsets.only(right: 15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(37),
                                   border: Border.all(color: Colors.blue, width: 2)
                                 ),
                                 child: CircleAvatar(
                                   radius: 35,
                                   backgroundImage: AssetImage(users[index].imageUrl),
                                 ),
                               ),
                            SizedBox(height: 7,),
                               Text(users[index].userName)
                             ],
                         ),
                       );
                       }
                   ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text('Posts', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, letterSpacing: 5),),
              ),

              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 450,
                  autoPlay: true,
                  enlargeCenterPage: true
                ),
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                  return Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(posts[index].imageUrl, height: 500, fit: BoxFit.cover,)),

                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 110,
                          color: Colors.white54,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(posts[index].title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                Text(posts[index].location, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                                 SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                              Row(
                                children: [
                                  Icon(Icons.favorite, size: 30, color: Colors.red,),
                                 SizedBox(width: 5,),
                                  Text(posts[index].likes.toString(), style: TextStyle(fontSize: 16),)
                                ],
                              ),

                                    Row(
                                      children: [
                                        Icon(Icons.comment, size: 30, color: Colors.blue,),
                                        SizedBox(width: 5,),
                                        Text(posts[index].comments.toString(), style: TextStyle(fontSize: 16),)
                                      ],
                                    )


                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                }
              )

            ],
          ),
        ),





      ],
    );
  }
}
