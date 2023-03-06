import 'package:flutter/material.dart';
import 'package:local_databases/model/user2.dart';
import 'package:local_databases/pages/sign_in1_page.dart';

import '../service/hide_service.dart';
import '../service/log_service.dart';

class SignUp1Page extends StatefulWidget {
  static final String id = "sigupn1_page";

  @override
  State<SignUp1Page> createState() => _SignUp1PageState();
}

class _SignUp1PageState extends State<SignUp1Page> {
  TextEditingController _username = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _number = new TextEditingController();
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

                  // #create account
                  Text("Create", style: TextStyle(color: Colors.white, fontSize: 30, letterSpacing: 1, fontWeight: FontWeight.w400,),),
                  Text("Account", style: TextStyle(color: Colors.white, fontSize: 30, letterSpacing: 1, fontWeight: FontWeight.w400),),

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

                  // #email
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child:  TextField(
                      controller: _email,
                      autocorrect: false,
                      enableSuggestions: false,
                      style: TextStyle(color: Colors.white, decoration: TextDecoration.none),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined, color: Colors.grey,),
                        hintText: 'E-Mail',
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

                  // #phone number
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child:  TextField(
                      controller: _number,
                      autocorrect: false,
                      enableSuggestions: false,
                      style: TextStyle(color: Colors.white, decoration: TextDecoration.none),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.grey,),
                        hintText: 'Phone Number',
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

                  SizedBox(height: 120,),

                  ElevatedButton(
                    onPressed: () {
                      var username = _username.text.toString();
                      var email = _email.text.toString();
                      var number = _number.text.toString();
                      var password = _password.text.toString();
                      if(username.isNotEmpty && password.isNotEmpty && email.isNotEmpty && number.isNotEmpty){
                        var user = User2(username, email, number, password);

                        HiveService.storeUser2(user);
                        var user2 = HiveService.loadUser2();
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
                Text("Already have an account? ", style: TextStyle(color: Colors.grey, fontSize: 15),),
                TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, SignIn1Page.id);
                    },
                    child: Text("SIGN IN", style: TextStyle(color: Colors.blueAccent, fontSize: 15),)
                )
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
        )
    );
  }
}
