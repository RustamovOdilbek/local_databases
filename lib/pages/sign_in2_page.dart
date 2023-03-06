import 'package:flutter/material.dart';
import 'package:local_databases/model/user3.dart';
import 'package:local_databases/pages/sign_up2_page.dart';

import '../service/hide_service.dart';
import '../service/log_service.dart';

class SignIn2Page extends StatefulWidget {
  static final String id = "signin2_page";

  @override
  State<SignIn2Page> createState() => _SignIn2PageState();
}

class _SignIn2PageState extends State<SignIn2Page> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF012B2C),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              padding: EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // #user photo
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_user.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),

                  SizedBox(height: 35,),

                  Text("Welcome", style: TextStyle(color: Colors.grey, fontSize: 18, letterSpacing: 1),),

                  Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 2, fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 30, right: 30, top: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),

                        SizedBox(height: 10,),

                        TextField(
                          controller: _email,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            border: InputBorder.none,
                          ),
                        ),

                        SizedBox(height: 20,),

                        Text("Password", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),

                        SizedBox(height: 10,),

                        TextField(
                          controller: _password,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey.shade300),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            border: InputBorder.none,
                          ),
                        ),

                        SizedBox(height: 30,),

                        Center(
                          child: Text("Forget Password", style: TextStyle(color: Colors.grey.shade300, fontSize: 16, letterSpacing: 1, fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),

                   Container(
                     width: double.infinity,
                     margin: EdgeInsets.only(top: 20),
                     height: 60,
                     child:  TextButton(
                         style: TextButton.styleFrom(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(12), 
                             ),
                             foregroundColor: Color(0xFF012B2C),
                             elevation: 2,
                             backgroundColor: Color(0xFF012B2C)
                         ),
                         onPressed: (){
                           var email = _email.text.toString();
                           var password = _password.text.toString();
                           if(email.isNotEmpty && password.isNotEmpty){
                             var user = User3(email, password);

                             HiveService.storeUser3(user);
                             var user3 = HiveService.loadUser3();
                             LogService.i(user3.toJson().toString());
                           }
                         },
                         child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 16),)
                     ),
                   ),

                    Center(
                      child: Text("OR", style: TextStyle(color: Colors.grey.shade300, fontSize: 16, letterSpacing: 1, fontWeight: FontWeight.w400),),
                    ),
                    
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img_facebook.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img_twitter.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img_instagram.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? ", style: TextStyle(color: Colors.grey, fontSize: 15),),
                        TextButton(
                            onPressed: (){
                               Navigator.pushReplacementNamed(context, SignUp2Page.id);
                            },
                            child: Text("SIGN UP", style: TextStyle(color: Color(0xFF012B2C), fontSize: 15),)
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
