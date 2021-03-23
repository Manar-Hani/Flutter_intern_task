import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fadeAnimation.dart';
import 'PasswordPage.dart';

class LoginWithEmail extends StatefulWidget {
  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(1.8, Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(14, 139, 196, 0.2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10)
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.grey[400])
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          SizedBox(height: 30,),
                          FadeAnimation(2,
                              RaisedButton(
                                onPressed: () =>  {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PasswordPage()),
                              )},
                                color: Color.fromRGBO(143, 208, 251, 1.0),
                                child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(143, 208, 251, 1.0),
                                        Color.fromRGBO(143, 195, 251, 0.6),
                                      ]
                                  )
                              ),
                              child: Center(
                                child: Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )),
                          // SizedBox(height: 70,),
                          // FadeAnimation(1.5, RaisedButton(
                          //     onPressed: () =>  {
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(builder: (context) => PasswordPage()),
                          //       )},
                          //     color: Colors.transparent,
                          //     child:Text("Don't Have an Email? Press here",
                          //       style: TextStyle(color: Colors.blueAccent),)
                          // ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

