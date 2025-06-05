import 'package:flutter/material.dart';

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
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(59, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40), 
                    bottomRight: Radius.circular(40)),
                  ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}