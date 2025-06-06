import 'package:flutter/material.dart';
import 'package:hotel_booking_app/services/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40), 
                  bottomRight: Radius.circular(40)),
                child: Image.asset('images/home.jpg', 
                width: MediaQuery.of(context).size.width,
                height: 280,
                fit: BoxFit.cover
                ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 5,),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(59, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40), 
                    bottomRight: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                      Icon(Icons.location_on,
                        color: Colors.white),
                        SizedBox(width: 10),
                        Text('Uganda, Kampala',
                        style: AppWidget.whitetextstyle(20.0)
                      ),
                      ],
                      ),
                      SizedBox(height: 30,),
                      Text("Hey Alvin! Tell us where you want to go", style: AppWidget.whitetextstyle(24)),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(103, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,
                            color: Colors.white),
                            hintText: 'Search Places',
                            hintStyle: AppWidget.whitetextstyle(15)
                          )
                        ),
                      ),
                    ],
                    )
                ),
              ],
            )
          ],
        )
      )
    );
  }
}