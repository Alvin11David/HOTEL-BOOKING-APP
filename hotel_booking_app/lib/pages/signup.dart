import 'package:flutter/material.dart';
import 'package:hotel_booking_app/services/widget_support.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Center(
              child: Image.asset("images/signup.png",
              height: 300,
              width: 300,
              fit: BoxFit.cover
              ),
            ),
            SizedBox(height: 5,),
            Text("Sign Up", style: AppWidget.headlinetextstyle(25),),
            SizedBox(height: 5,),
            Text("Please enter the details to continue.", style: AppWidget.normaltextstyle(20)),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left:30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffececf8),
              ),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none,
                prefixIcon: Icon(Icons.person,
                color: Colors.green),
                hintText: "Enter Your Name",
                hintStyle: AppWidget.normaltextstyle(22)
                )
              )
            )
          ],
        ),
      )
    );
  }
}