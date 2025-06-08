import 'package:flutter/material.dart';
import 'package:hotel_booking_app/pages/home.dart';      
import 'package:hotel_booking_app/pages/booking.dart';   
import 'package:hotel_booking_app/pages/profile.dart';   
import 'package:hotel_booking_app/pages/wallet.dart'; 
import 'package:curved_navigation_bar/curved_navigation_bar.dart';   

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> pages;

  late HomePage homePage;
  late BookingPage booking;
  late ProfilePage profile;
  late WalletPage wallet;

  int currentTabIndex = 0;

  @override
  void initState() {
    homePage = HomePage();
    booking = BookingPage();
    profile = ProfilePage();
    wallet = WalletPage();

    pages = [homePage, booking, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
        setState(() {
          currentTabIndex = index;
        });
      },
      items: [
        Icon(Icons.home, color: Colors.white, size: 30),
        Icon(Icons.shopping_bag, color: Colors.white, size: 30),
        Icon(Icons.wallet, color: Colors.white, size: 30),
        Icon(Icons.person, color: Colors.white, size: 30),
      ],
    ),
    body: pages[currentTabIndex],
    );
  }
}
