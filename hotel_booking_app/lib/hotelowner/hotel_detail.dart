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
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                width: MediaQuery.of(context).size.width,
                child: Column(  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(width: 2, color: Colors.black45 )),
                        child: Icon(Icons.camera_alt, color: Colors.blue, size: 35)
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Hotel Name', style: AppWidget.normaltextstyle(20),),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Enter Hotel Name", hintStyle: AppWidget.normaltextstyle(18)
                        ),
                      )
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