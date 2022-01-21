import 'package:flutter/material.dart';




class DrawerWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 250,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage('assets/images/user_background.jpg')
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          border: Border.all(color: Colors.blue, width: 2)
                        ),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage('assets/images/user.jpg'),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('Rebecca', style: TextStyle(fontSize: 25, color: Colors.white),),
                    ],
                  ),
                )
            ),
          ),

         _buildListTile(label: 'Home', icon: Icons.home),
         _buildListTile(label: 'Profile', icon: Icons.person_add),
         _buildListTile(label: 'Settings', icon: Icons.settings),
         _buildListTile(label: 'Sign Out', icon: Icons.exit_to_app),

        ],
      ),
    );
  }

  ListTile _buildListTile({required IconData icon, required String label}) {
    return ListTile(
      leading: Icon(icon, size: 30,),
      title: Text(label, style: TextStyle(fontSize: 20),),);
  }


}
