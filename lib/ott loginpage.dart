import 'package:flutter/material.dart';
import 'package:ott/ott%20splashscreen.dart';
import 'Authentication.dart';
import 'firebase.dart';

void main() {
  runApp(ott1());
}
class ott1 extends StatefulWidget {
  const ott1({super.key});

  @override
  State<ott1> createState() => _ott1State();
}

class _ott1State extends State<ott1> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();

  final c = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE",style:TextStyle(color: Colors.blue,
            fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:Form(
        key: c,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,width: 300,
                child: TextFormField(
                  controller: a,
                  keyboardType: TextInputType.name,
                  validator: (int){
                    if(int==null   || int.isEmpty){
                      return "Enter Valid Name";
                    }
                  },
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    hintText: "Email",
                  ),
                ),
              ),
            ),SizedBox(height: 15,),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,width: 300,
                child: TextFormField(
                  controller: b,
                  validator: (input){
                    if(input==null  ||  input.isEmpty || input.length!=8)
                      return "Enter Valid Password";
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password",
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  ElevatedButton(onPressed: ()async{
                    final message = await AuthService().login(
                        email: a.text,
                        password: b.text
                    );

                    if(c.currentState!.validate()){
                      if (message!.contains("Success")){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ott()),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Successfully Logged In"))
                        );
                      }
                      else { ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Email Does Not Exist"))
                      );
                      } } },
                      child: Text("Login")),
                  SizedBox(width: 25),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => email()),
                    );
                   }, child: Text("Sign up")),

                ],
              ),
            )
          ],
        ),)
    );
  }
}
