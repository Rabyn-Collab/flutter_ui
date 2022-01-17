import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {

 final titleController = TextEditingController();
 final passwordController = TextEditingController();
final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 150,),
                   Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYXNeW05OGMu4dgLwvR94x_kBUrj-ZGyIVKtF8EjQkwtF4gnLKWR_LO6puDAsj529vXwc&usqp=CAU'),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: titleController,
                validator: (val){
                  if(val!.isEmpty || !val.contains('@')){
                    return 'please provide email';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                 hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (val){
                  if(val!.isEmpty){
                    return 'please provide password';
                  }else{
                    return null;
                  }
                },
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    hintText: 'password'
                ),
              ),
                SizedBox(height: 40,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    minimumSize: Size(420, 45)
                  ),
                    onPressed: (){
                _form.currentState!.save();
                if(_form.currentState!.validate()){
                  print(titleController.text.trim());
                  print(passwordController.text.trim());

                }

                    },
                    child: Text('Sign In')
                ),
                SizedBox(height: 35,),
                Text('Forgot password', style: TextStyle(fontSize: 17, color: Colors.blueGrey, wordSpacing: 10),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
