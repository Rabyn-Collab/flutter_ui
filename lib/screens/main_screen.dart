import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/drawer_widget.dart';
import 'package:flutter_ui/widgets/post_widget.dart';



class MainScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue
          ),
          backgroundColor: Colors.white,
          title: Text('FRENZY', style: TextStyle(color: Colors.blue, letterSpacing: 7, fontWeight: FontWeight.w500),),
        bottom: TabBar(
          labelColor: Colors.blue,
            labelStyle: TextStyle(fontSize: 20),
            tabs: [
              Tab(
                text: 'Trending',
              ),
              Tab(
                text: 'Latest',
              ),
            ]
        ),
        ),
          body: TabBarView(
            children: [
             PostWidget(),
              Container(
                child: Center(child: Text('latest'),),
              ),
            ],
          )
      ),
    );
  }
}
