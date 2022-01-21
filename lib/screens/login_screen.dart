import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/main_screen.dart';
import 'package:get/get.dart';




class LoginScreen extends StatelessWidget {

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Form(
          key: _form,
          child: SingleChildScrollView(
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: userNameController,
                      validator: (val){
                       if(val!.isEmpty){
                         return 'please provide userName';
                       }
                      },
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val){
                        if(val!.isEmpty){
                          return 'please provide password';
                        }
                        if(val.length <= 10){
                          return 'password character length must be greater than 10';
                        }
                      },
                      controller: passwordController,
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
                      _form.currentState!.save();
                  // if(_form.currentState!.validate()){
                  //   FocusScope.of(context).unfocus();
                  //    Get.to(() => MainScreen(), transition: Transition.leftToRight);
                  // }
                      FocusScope.of(context).unfocus();
                      Get.to(() => MainScreen(), transition: Transition.leftToRight);

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
          ),
        )
    );
  }
}
