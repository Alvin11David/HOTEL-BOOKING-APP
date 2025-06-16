import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/services/database.dart';
import 'package:hotel_booking_app/services/widget_support.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class HotelDetailPage extends StatefulWidget {
  const HotelDetailPage({super.key});

  @override
  State<HotelDetailPage> createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  bool isChecked = false,
      isChecked1 = false,
      isChecked2 = false,
      isChecked3 = false;

      File? selectedImage;
      final ImagePicker _picker = ImagePicker();

      TextEditingController hotelnamecontroller = new TextEditingController();
      TextEditingController hotelchargescontroller = new TextEditingController();
      TextEditingController hoteladdresscontroller = new TextEditingController();
      TextEditingController hoteldescriptioncontroller = new TextEditingController();



Future getImage() async {
  
  var image = await _picker.pickImage(source: ImageSource.gallery);
  selectedImage = File(image!.path);
  setState(() {

  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Container(
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
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                  width: MediaQuery.of(context).size.width,
                  child: Column(  
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                    selectedImage!= null? 
                    Container(
                          height: 200,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.file(selectedImage!, 
                            fit: BoxFit.cover)),
                    ): GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: Center(
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(width: 2, color: Colors.black45 )),
                            child: Icon(Icons.camera_alt, color: Colors.blue, size: 35)
                          ),
                        ),
                    ),
                      SizedBox(height: 20),
                      Text('Hotel Name', style: AppWidget.normaltextstyle(20),),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: hotelnamecontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Enter Hotel Name", hintStyle: AppWidget.normaltextstyle(18)
                          ),
                        )
                      ),
                      SizedBox(height: 20),
                      Text('Hotel Room Charges', style: AppWidget.normaltextstyle(20),),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: hotelchargescontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Enter Room Charges", hintStyle: AppWidget.normaltextstyle(18)
                          ),
                        )
                      ),
                      SizedBox(height: 5),
                      SizedBox(height: 20),
                      Text('Hotel Address', style: AppWidget.normaltextstyle(20),),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: hoteladdresscontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Enter Hotel Address", hintStyle: AppWidget.normaltextstyle(18)
                          ),
                        )
                      ),
                      SizedBox(height: 5),
                      Text("What services do you want to offer?", style: AppWidget.normaltextstyle(20)),
                      SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Icon(
                            Icons.wifi,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text("WiFi", style: AppWidget.normaltextstyle(23)),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: isChecked1,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked1 = value!;
                              });
                            },
                          ),
                          Icon(
                            Icons.tv,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text("HDTV", style: AppWidget.normaltextstyle(23)),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: isChecked2,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked2 = value!;
                              });
                            },
                          ),
                          Icon(
                            Icons.kitchen,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text("Kitchen", style: AppWidget.normaltextstyle(23)),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: isChecked3,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked3 = value!;
                              });
                            },
                          ),
                          Icon(
                            Icons.bathroom,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                          Text("Bathroom", style: AppWidget.normaltextstyle(23)),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("Hotel Description", style: AppWidget.normaltextstyle(20)),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(color: Color(0xFFececf8), borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          maxLines: 6,
                          decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Enter Hotel Description", hintStyle: AppWidget.normaltextstyle(18)
                          ),
                        )
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () async {
                          String addId = randomAlphaNumeric(10);
                          //Reference firebaseStorageRef = FirebaseStorage.instance.ref().child("blogImage").child(addId);
                          //final UploadTask task = firebaseStorageRef.putFile(selectedImage!);
                          //var downloadUrl = await(await task).ref.getDownloadURL();

                          Map<String, dynamic> addHotel = {
                            "Image": "",
                            "HotelName": hotelnamecontroller.text,
                            "HotelCharges": hotelchargescontroller.text,
                            "HotelAddress": hoteladdresscontroller.text,
                            "HotelDescription": hoteldescriptioncontroller.text,
                            "WiFi": isChecked?"true": "false",
                            "HDTV": isChecked1?"true": "false",
                            "Kitchen": isChecked2?"true": "false",
                            "Bathroom": isChecked3?"true": "false",
                            "Id": addId,
                          };
                          await DatabaseMethods().addHotel(addHotel, addId);
                          ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                              "Hotel Details have been uploded successfully!",
                              style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,),
                  ),
                ),
              );
                        },

                        child: Center(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.width/1.5,
                            child: Center(child: Text("Submit", style: AppWidget.boldwhitetextstyle(26)))
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}