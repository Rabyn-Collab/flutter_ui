import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height:   MediaQuery.of(context).size.height,
            child: Column(
              children: [
             Image.asset('assets/images/login_background.jpg', fit: BoxFit.cover,),
              SizedBox(height: 20,),
                Text('FRENZY', style: TextStyle(fontSize: 35, color: Colors.blue, letterSpacing: 5, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(

                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'username',
                      prefixIcon: Icon(Icons.account_box),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText:  true,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'password',
                        prefixIcon: Icon(Icons.account_box)
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(320, 40),
                  ),
                    onPressed: (){

                    }, child:Text('Login', style: TextStyle(fontSize: 20),) ) ,

                SizedBox(height: 25,),

                Expanded(
                    child: Container(
                      alignment: FractionalOffset.bottomCenter,
                      child: Container(
                        width: double.infinity,
                          height: 70,
                          color: Colors.blue,
                          child: Center(child: Text('Don\t have an Account SignUp', style: TextStyle(color: Colors.white, fontSize: 20),))),
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}
