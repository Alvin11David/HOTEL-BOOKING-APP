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
      body: SingleChildScrollView(
        child: Container(
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
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.wifi, color: Colors.blue, size: 30),
                        SizedBox(width: 10),
                        Text("Free WiFi", style: AppWidget.normaltextstyle(20)),
                        SizedBox(width: 60),
                        Icon(Icons.tv, color: Colors.blue, size: 30),
                        SizedBox(width: 10),
                        Text("HD TV", style: AppWidget.normaltextstyle(20)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.local_parking, color: Colors.blue, size: 30),
                        SizedBox(width: 10),
                        Text("Free Parking", style: AppWidget.normaltextstyle(20)),
                        SizedBox(width: 20),
                        Icon(Icons.pool, color: Colors.blue, size: 30),
                        SizedBox(width: 30),
                        Text("Pool", style: AppWidget.normaltextstyle(20)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.restaurant, color: Colors.blue, size: 30),
                        SizedBox(width: 10),
                        Text("Restaurant", style: AppWidget.normaltextstyle(20)),
                        SizedBox(width: 50),
                        Icon(Icons.local_bar, color: Colors.blue, size: 30),
                        SizedBox(width: 40),
                        Text("Bar", style: AppWidget.normaltextstyle(20)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(thickness: 2,),
                    Text("About this place", style: AppWidget.headlinetextstyle(22)),
                    SizedBox(height: 10),
                    Text("This is a beautiful hotel located near the beach offers a cozy seaside escape with stunning ocean views, modern rooms, and direct beach access. Guests can enjoy an infinity pool, fresh seafood dining, and relaxing beach vibes—perfect for a peaceful getaway.", style: AppWidget.normaltextstyle(18)),
                    SizedBox(height: 20),
                    Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                       
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text("\$100 for 4 nights", style: AppWidget.headlinetextstyle(18),),
                            SizedBox(height: 3),
                            Text("Check-in Date", style: AppWidget.normaltextstyle(18)),
                            Divider(),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.calendar_month,
                                  color: Colors.white,
                                  size: 30)
                                ),
                                SizedBox(width: 10),
                                Text("08,Jun 2025", style: AppWidget.normaltextstyle(18)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text("\$100 for 4 nights", style: AppWidget.headlinetextstyle(18),),
                            SizedBox(height: 3),
                            Text("Check-out Date", style: AppWidget.normaltextstyle(18)),
                            Divider(),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Icon(Icons.calendar_month,
                                  color: Colors.white,
                                  size: 30)
                                ),
                                SizedBox(width: 10),
                                Text("29,Jun 2025", style: AppWidget.normaltextstyle(18)),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Number of Guests", style: AppWidget.normaltextstyle(18)),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                color:Color(0xffececf8),
                                borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "1",
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  )
                                  )
                              ),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color:Colors.blue
                              ),
                              child: Center(child: Text("Book Now", style: AppWidget.whitetextstyle(20)))
                            )
                          ],
                        )
                      ),
                    ),
                    SizedBox(height: 20),
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
