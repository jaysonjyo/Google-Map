import 'package:flutter/material.dart';

import 'main.dart';
import 'map.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
       appBar: AppBar(backgroundColor: Colors.black,
       centerTitle: true,
       title: Text("Google Map location",style: TextStyle(
         color: Colors.white,
         fontSize: 20,
         fontFamily: 'sfprodisplay',
         fontWeight: FontWeight.w500,
       ) ,),),
       body:  Center(child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25),
         child: TextField(
           controller: pickuplocationcontroller,
           //textAlign: TextAlign.start,
           cursorColor: Colors.black,
           style: TextStyle(color: Colors.black,decorationThickness: 0),
           textAlignVertical: TextAlignVertical.center,
           decoration: InputDecoration(
             //filled: true,
             //fillColor: Colors.white.withOpacity(0.18000000715255737),
             border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(4),
                 borderSide: BorderSide(
                     width: 1,
                     color: Color(0xFF627487))),
             enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(4),
                 borderSide: BorderSide(
                     width: 1,
                     color: Color(0xFF627487))),
             focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(4),
                 borderSide: BorderSide(
                     width: 1,
                     color: Color(0xFF627487))),
             //errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),
             //  borderRadius: BorderRadius.circular(20.r)),
             hintText:
             'Type your location or search in map',
             hintStyle: TextStyle(
               color: Colors.black,
               fontSize: 16,
               fontFamily: 'sfprodisplay',
               fontWeight: FontWeight.w500,
             ),
             suffixIcon: GestureDetector(
               onTap: () {
                 
                 Navigator.of(context).push(
                     MaterialPageRoute(
                         builder: (_) =>
                             GoogleMapickup()));
               },
               child: Icon(
                 Icons.map_outlined,
                 color: Color(0xFF627487),
               ),
             ),
           ),
         ),
       ),)
    );
  }
}
