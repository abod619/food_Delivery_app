import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/signup.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      height: MediaQuery.of(context).size.height/2,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text("Login" , style: AppWidget.HeadlineTextFeildStyle(),),
                          SizedBox(height: 30,),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email', hintStyle: AppWidget.semiBooldTextTextFeildStyle(),
                              prefixIcon: Icon(Icons.email)
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
                            child: Text("Forget Paasword?", style: AppWidget.semiBooldTextTextFeildStyle(),)
                            ),
                            SizedBox(height: 90,),

                            Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                width: 200,
                                decoration: BoxDecoration(color: Color(0xffff5722),borderRadius: BorderRadius.circular(20)),
                                child: Center(child: Text('LOGIN', style:  TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                              ),
                            ),
                         
                        ],
                      ),
                    ),
                  ),
                   SizedBox(height: 70,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                            },
                            child: Text("Don't have an account? Sign up", style: AppWidget.semiBooldTextTextFeildStyle(),))
                ],
              ),
            )
          ],
        ),
      ) ,
    );
  }
}