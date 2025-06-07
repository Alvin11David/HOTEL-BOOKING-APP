import 'package:flutter/material.dart';
import 'package:hotel_booking_app/services/widget_support.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    child: Image.asset(
                      "assets/images/hotel1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 50, left: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0), borderRadius: BorderRadius.circular(60)),
                      child: Icon(Icons.arrow_back,
                      color: Colors.white,
                      size: 30),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text("Hotel Beach", style: AppWidget.headlinetextstyle(27)),
                  Text("\$20",style: AppWidget.normaltextstyle(26)),
                  Divider(thickness: 2,),
                  SizedBox(height: 10),
                  Text("What this place offers", style: AppWidget.headlinetextstyle(22)),
                  Row(
                    children: [
                      Icon(Icons.wifi, color: Colors.blue),
                      SizedBox(width: 10),
                      Text("Free WiFi", style: AppWidget.normaltextstyle(20)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
