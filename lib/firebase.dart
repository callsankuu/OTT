import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ott/ott%20bottom%20navigation.dart';
import 'package:ott/ott%20loginpage.dart';
import 'package:ott/ott%20splashscreen.dart';
import 'authservice.dart';
import 'Authentication.dart';

class email extends StatefulWidget {
  const email({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<email> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final qwe = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Form(
        key: qwe,
        child: Column(
          children: [

            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.name,
                  validator: (int){
                    if(int==null   || int.isEmpty){
                      return "Enter Valid Name";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      hintText: "Enter Your Name"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller:_passwordController ,
                  validator: (input){
                    if(input==null  ||  input.isEmpty || input.length!=8)
                      return "Enter Valid Password";
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.keyboard),
                      hintText: "Enter Your Password"
                  ),
                ),
              ),
            ),

            ElevatedButton(onPressed: () async {
              final message = await AuthService().registration(
                  email: _emailController.text,
                  password: _passwordController.text);

              if(qwe.currentState!.validate()){
                if(message!.contains('Success')){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ott7()),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Account Created"))
                  );
                }  else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("This Email Already Exist"))
                  );
                }
              }
            }, child: Text("login"))
          ],
        ),
      ),
    );
  }
}
