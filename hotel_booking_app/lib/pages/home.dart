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
      body: SingleChildScrollView(
        child: Container(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    child: Image.asset(
                      'assets/images/home.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 35, left: 5),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(59, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              'Uganda, Kampala',
                              style: AppWidget.whitetextstyle(20.0),
                            ),
                          ],
                        ),
                        SizedBox(height: 26),
                        Text(
                          "Hey Alvin! Tell us where you want to go",
                          style: AppWidget.whitetextstyle(22),
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.only(bottom: 5, top: 5),
                          margin: EdgeInsets.only(right: 20.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(103, 255, 255, 255),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search, color: Colors.white),
                              hintText: 'Search Places...',
                              hintStyle: AppWidget.whitetextstyle(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "The most relevant",
                  style: AppWidget.headlinetextstyle(22),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/hotel1.jpg',
                              width: MediaQuery.of(context).size.width / 1.5, fit: BoxFit.cover, height: 230,
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text("Hotel Beach", style: AppWidget.headlinetextstyle(18)),
                                SizedBox(width: MediaQuery.of(context).size.width/4.9),
                                Text("\$20", style: AppWidget.headlinetextstyle(24),)
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.blue, size: 30),
                                SizedBox(width: 5),
                                Text("Near Lake Victoria, Uganda", style: AppWidget.normaltextstyle(20)),
                              ],
                            ),
                          )
                          ]
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/hotel2.jpg',
                              width: MediaQuery.of(context).size.width / 1.5, fit: BoxFit.cover, height: 230,
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text("Hotel Beach", style: AppWidget.headlinetextstyle(18)),
                                SizedBox(width: MediaQuery.of(context).size.width/4.9),
                                Text("\$20", style: AppWidget.headlinetextstyle(24),)
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.blue, size: 30),
                                SizedBox(width: 5),
                                Text("Near Lake Victoria, Uganda", style: AppWidget.normaltextstyle(20)),
                              ],
                            ),
                          )
                          ]
                          ),
                        ),
                        
                      ),),
                      Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/hotel3.jpg',
                              width: MediaQuery.of(context).size.width / 1.5, fit: BoxFit.cover, height: 230,
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text("Hotel Beach", style: AppWidget.headlinetextstyle(18)),
                                SizedBox(width: MediaQuery.of(context).size.width/4.9),
                                Text("\$20", style: AppWidget.headlinetextstyle(24),)
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.blue, size: 30),
                                SizedBox(width: 5),
                                Text("Near Lake Victoria, Uganda", style: AppWidget.normaltextstyle(20)),
                              ],
                            ),
                          )
                          ]
                          ),
                        ),
                      ),
                      )
                  ],
                ),
              ),
              SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Discover new places', style: AppWidget.headlinetextstyle(24)),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 280,
                child: ListView(
                  scrollDirection:Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'images/mumbai.jpg', 
                                height: 200, 
                                width: 180, 
                                fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('Kenya', style: AppWidget.headlinetextstyle(20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    SizedBox(width: 5),
                                    Text('10 Hotels', style: AppWidget.normaltextstyle(18)),
                                  ],
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'images/bali.jpg', 
                                height: 200, 
                                width: 180, 
                                fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('Bali', style: AppWidget.headlinetextstyle(20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    SizedBox(width: 5),
                                    Text('9 Hotels', style: AppWidget.normaltextstyle(18)),
                                  ],
                                ),
                              )
                            ]
                          )
                        ),
                        
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'images/newyork.jpg', 
                                height: 200, 
                                width: 180, 
                                fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('Newyork', style: AppWidget.headlinetextstyle(20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    SizedBox(width: 5),
                                    Text('20 Hotels', style: AppWidget.normaltextstyle(18)),
                                  ],
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.only(left: 20, bottom: 5),
                      child: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'images/dubai.jpg', 
                                height: 200, 
                                width: 180, 
                                fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text('Dubai', style: AppWidget.headlinetextstyle(20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Icon(Icons.hotel, color: Colors.blue),
                                    SizedBox(width: 5),
                                    Text('15 Hotels', style: AppWidget.normaltextstyle(18)),
                                  ],
                                ),
                              )
                            ]
                          )
                        ),
                      )
                     ),
                  ]
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
