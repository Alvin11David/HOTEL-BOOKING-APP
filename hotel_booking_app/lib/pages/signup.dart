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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("images/signup.png",
                height: 300,
                width: 300,
                fit: BoxFit.cover
                ),
              ),
              SizedBox(height: 5,),
              Center(child: Text("Sign Up", style: AppWidget.headlinetextstyle(25),)),
              SizedBox(height: 5,),
              Center(child: Text("Please enter the details to continue.", style: AppWidget.normaltextstyle(20))),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Name", style: AppWidget.headlinetextstyle(20)),
              ),
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
                  color: const Color.fromARGB(255, 2, 77, 138)),
                  hintText: "Enter Your Name",
                  hintStyle: AppWidget.normaltextstyle(18)
                  )
                )
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Email", style: AppWidget.headlinetextstyle(20)),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left:30, right: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffececf8),
                ),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none,
                  prefixIcon: Icon(Icons.email,
                  color: const Color.fromARGB(255, 2, 77, 138)),
                  hintText: "Enter Your Email",
                  hintStyle: AppWidget.normaltextstyle(18)
                  )
                )
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Password", style: AppWidget.headlinetextstyle(20)),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left:30, right: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffececf8),
                ),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock,
                  color: const Color.fromARGB(255, 2, 77, 138)),
                  hintText: "Enter Your Password",
                  hintStyle: AppWidget.normaltextstyle(18)
                  )
                )
              ),
              SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Confirm Password", style: AppWidget.headlinetextstyle(20)),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left:30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffececf8),
              ),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none,
                prefixIcon: Icon(Icons.password,
                color: const Color.fromARGB(255, 2, 77, 138)),
                hintText: "Confirm Your Password",
                hintStyle: AppWidget.normaltextstyle(18)
                )
              )
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              margin: EdgeInsets.only(left:30, right: 30),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20)
              ),
              width: MediaQuery.of(context).size.width/1.0,
              child: Center(child: Text("Sign Up", style: AppWidget.whitetextstyle(20)))
            )
            ],
          ),
        ),
      )
    );
  }
}