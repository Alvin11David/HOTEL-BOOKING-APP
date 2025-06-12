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
        child: Column(
          children: [
            Row(children: [
              Text("Hotel Details", style: AppWidget.whitetextstyle(22),
              ),
            ],
            ),
          ],
        ),
      )
    );
  }
}