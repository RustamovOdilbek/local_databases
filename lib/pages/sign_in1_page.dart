import 'package:flutter/material.dart';
import 'package:local_databases/model/user1.dart';
import 'package:local_databases/pages/sign_up1_page.dart';

import '../service/hide_service.dart';
import '../service/log_service.dart';

class SignIn1Page extends StatefulWidget {
  static final String id = "signin1_page";

  @override
  State<SignIn1Page> createState() => _SignIn1PageState();
}

class _SignIn1PageState extends State<SignIn1Page> {
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFF030521),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // #user image
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image:  DecorationImage(image: AssetImage("assets/images/img_user.jpg"))
                    ),
                  ),

                  //welcome back
                  Text("Welcome Back!", style: TextStyle(color: Colors.white, fontSize: 30, letterSpacing: 1, fontWeight: FontWeight.w400),),

                  //sign in to continuo
                  Text("Sign in to continuo", style: TextStyle(color: Colors.grey, fontSize: 18, letterSpacing: 1),),

                 SizedBox(height: 50,),

                 // #user name
                 Container(
                   margin: EdgeInsets.only(left: 30, right: 30),
                   child:  TextField(
                     controller: _username,
                     style: TextStyle(color: Colors.white),
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.person_2_outlined, color: Colors.grey,),
                       hintText: 'User Name',
                       hintStyle: TextStyle(color: Colors.grey),
                       enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey),
                       ),
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey),
                       ),
                       border: InputBorder.none,
                     ),
                   ),
                 ),

                  SizedBox(height: 20,),

                  // #password
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child:  TextField(
                      controller: _password,
                      autocorrect: false,
                      enableSuggestions: false,
                      style: TextStyle(color: Colors.white, decoration: TextDecoration.none),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline_sharp, color: Colors.grey,),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text("Forget Password", style: TextStyle(color: Colors.grey, fontSize: 14, letterSpacing: 1, fontWeight: FontWeight.w400),),

                  SizedBox(height: 120,),

                  ElevatedButton(
                    onPressed: () {
                      var username = _username.text.toString();
                      var password = _password.text.toString();
                      if(username.isNotEmpty && password.isNotEmpty){
                        var user = User1(username, password);

                        HiveService.storeUser1(user);
                        var user2 = HiveService.loadUser1();
                        LogService.i(user2.toJson().toString());
                      }
                    },
                    child: Icon(Icons.arrow_forward_rounded, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: TextStyle(color: Colors.grey, fontSize: 15),),
                TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, SignUp1Page.id);
                    },
                    child: Text("SIGN UP", style: TextStyle(color: Colors.blueAccent, fontSize: 15),)
                )
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
