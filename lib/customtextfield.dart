import 'package:flutter/material.dart';

class CustomTextFom extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;
   const CustomTextFom({super.key, required this.hinttext, required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.only(top :15.0, left: 18, right: 18),
  child:   TextFormField( controller: mycontroller,
  
    decoration: InputDecoration( 
      hintStyle: const TextStyle(fontSize: 16,color: Colors.black),
  
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  
      hintText: hinttext,
  
    ),
  
  ),
);

  }
}