import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/login.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
                colors: [
                  Color(0xFFff5c30),
                  Color(0xFFe74b1a)

              ])),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
              child: Text(''),
            ),
            Container(
              margin: EdgeInsets.only(top: 60 , left: 20, right: 20),
              child: Column(
                children: [
                  Center(child: Image.asset("images/logo.png", width: MediaQuery.of(context).size.width/1, fit: BoxFit.cover,)),
                  SizedBox(height: 50,),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.8,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text("Signup" , style: AppWidget.HeadlineTextFeildStyle(),),
                          SizedBox(height: 30,),
                           TextField(
                            decoration: InputDecoration(
                              hintText: 'Name', hintStyle: AppWidget.semiBooldTextTextFeildStyle(),
                              prefixIcon: Icon(Icons.person_2_outlined)
                            ),
                          ),
                          SizedBox(height: 30,),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email', hintStyle: AppWidget.semiBooldTextTextFeildStyle(),
                              prefixIcon: Icon(Icons.email_outlined)
                            ),
                          ),
                          SizedBox(height: 30,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password', hintStyle: AppWidget.semiBooldTextTextFeildStyle(),
                              prefixIcon: Icon(Icons.password_outlined)
                            ),
                          ),
                          SizedBox(height: 30,),

                          Container(
                            alignment: Alignment.topRight,
                            child: Text("Forget Password?", style: AppWidget.semiBooldTextTextFeildStyle(),)
                            ),
                            SizedBox(height: 80,),

                            Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                width: 200,
                                decoration: BoxDecoration(color: Color(0xffff5722),borderRadius: BorderRadius.circular(20)),
                                child: Center(child: Text('SIGN UP', style:  TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                              ),
                            ),
                         
                        ],
                      ),
                    ),
                  ),
                   SizedBox(height: 70,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Text("Already have an account? Login", style: AppWidget.semiBooldTextTextFeildStyle(),))
                ],
              ),
            )
          ],
        ),
      ) ,
    );;
  }
}