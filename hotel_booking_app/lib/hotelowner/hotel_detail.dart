import 'package:flutter/material.dart';
import 'package:hotel_booking_app/services/widget_support.dart';

class HotelDetailPage extends StatefulWidget {
  const HotelDetailPage({super.key});

  @override
  State<HotelDetailPage> createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Hotel Details", style: AppWidget.boldwhitetextstyle(26),
              ),
            ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(width: 2, color: Colors.black45 )),
                      child: Icon(Icons.camera_alt, color: Colors.blue, size: 35)
                    )
                  ],
                )
              ),
            )
          ],
        ),
      )
    );
  }
}