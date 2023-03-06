import 'package:flutter/material.dart';
import 'package:local_databases/pages/sign_in2_page.dart';

class SignUp2Page extends StatefulWidget {
  static final String id = "sigupn2_page";

  @override
  State<SignUp2Page> createState() => _SignUp2PageState();
}

class _SignUp2PageState extends State<SignUp2Page> {
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
              height: 200,
              padding: EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Welcome", style: TextStyle(color: Colors.grey, fontSize: 18, letterSpacing: 1),),

                  Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 2, fontWeight: FontWeight.bold),),
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

                        Text("Number", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),

                        SizedBox(height: 10,),

                        TextField(
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          decoration: InputDecoration(
                            hintText: 'Number',
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

                        Text("Address", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),

                        SizedBox(height: 10,),

                        TextField(
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          decoration: InputDecoration(
                            hintText: 'Address',
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

                          },
                          child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16),)
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
                        Text("Already have an account? ", style: TextStyle(color: Colors.grey, fontSize: 15),),
                        TextButton(
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, SignIn2Page.id);
                            },
                            child: Text("SIGN IN", style: TextStyle(color: Color(0xFF012B2C), fontSize: 15),)
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
