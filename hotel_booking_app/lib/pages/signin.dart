import 'package:flutter/material.dart';
import 'package:hotel_booking_app/pages/home.dart';
import 'package:hotel_booking_app/pages/signup.dart';
import 'package:hotel_booking_app/services/widget_support.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/images/login.png",
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover),
              ),
              SizedBox(height: 5,),
                Center(child: Text("Sign In", style: AppWidget.headlinetextstyle(25),)),
                SizedBox(height: 5,),
                Center(child: Text("Please enter the details to continue.", style: AppWidget.normaltextstyle(20))),
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
                    prefixIcon: Icon(Icons.mail,
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
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?", style: AppWidget.normaltextstyle(18),),
                    ],
                  ),
                ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Center(
                  child: Container(
                    height: 60,
                    margin: EdgeInsets.only(left:30, right: 30),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 77, 138),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: MediaQuery.of(context).size.width/2.0,
                    child: Center(child: Text("Sign In", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )))
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have an account?", style: AppWidget.normaltextstyle(18)),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text("Sign Up", style: TextStyle(
                    color: const Color.fromARGB(255, 2, 77, 138),
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
                )
              ])
            ],
            )
        ),
      )
    );
  }
}