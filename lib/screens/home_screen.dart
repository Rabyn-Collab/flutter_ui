import 'package:flutter/material.dart';
import 'package:flutter_ui/models/person.dart';




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
        body: Column(
          children: persons.map((e) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(e.imageUrl),
            ),
                  title: Text(e.userName,style: TextStyle(fontWeight: FontWeight.w500, color: e.color),),
                  subtitle: Text(e.message),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            );
          }).toList(),
        )
    );
  }
}
