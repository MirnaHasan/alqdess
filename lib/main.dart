
import 'package:flutter/material.dart';
import 'package:screen/colors.dart';
import 'package:screen/customtextfield.dart';
import 'package:screen/fourthscreen.dart';

import 'package:screen/thirdscreen.dart';
import 'package:screen/twoscreen.dart';

void main(){
  runApp(const screens());
}
class screens extends StatefulWidget {
  const screens({super.key});

  @override
  State<screens> createState() => _screensState();
}

class _screensState extends State<screens> {
  TextEditingController name = TextEditingController();
   TextEditingController phone = TextEditingController();
    TextEditingController time = TextEditingController();
     TextEditingController typevehicle = TextEditingController();
      TextEditingController direction = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 

        body: SafeArea( 
            
          child: Column(
                children: [
                Expanded(child: Stack(
          children: [
            Container(
              height: 130,
              width: 400,
              child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text("إضافة خط النقل" ,
                textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: PrimaryBackground ,
                  
                ),),
              ),
              decoration: const BoxDecoration(
                color: DarkGreen,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40), 
                  bottomRight: Radius.circular(40),
                )
              ),
            ) , 
           
            Padding(
              padding: const EdgeInsets.only(top: 80.0 , left: 30 , right: 30 , bottom: 260),
              child: Expanded(
                child: Container(
                height: 430 ,
                width: 330,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                        border: Border.all(color: const Color.fromARGB(255, 21, 97, 159) , width: 2)
                   ,
                    borderRadius: const BorderRadius.all(
                     Radius.circular(25) , 
                    ), 
                
                  ),
                  child: Column(
                    children: [
                  CustomTextFom(hinttext: "الإسم الرباعي", mycontroller:name ) , 
                   CustomTextFom(hinttext: "رقم الهاتف", mycontroller:phone ) , 
                    CustomTextFom(hinttext: "نوع المركبة ", mycontroller: typevehicle ) , 
                     CustomTextFom(hinttext: "وقت الذهاب و العودة ", mycontroller:time) , 
                      CustomTextFom(hinttext: "من و إلى ", mycontroller: direction) , 
                
                    ],
                  ) , 
                  
                  ),
              ),
              
              ),
              
                 Padding(
           padding: const EdgeInsets.only(top: 520, left: 70),
           child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17) ,
              border: Border.all(color: const Color.fromARGB(255, 21, 97, 159) , width: 2)
            ),
             child: MaterialButton(
          
              onPressed: (){
                
              }, child: const Text("REQUEST", style: 
                  const TextStyle(
                    fontSize: 17, 
                    fontWeight: FontWeight.bold,
                  ),),),
           ),
                 )
             
            
          
          ],
                ) ,), 
                
                ],
              )),
        )
     ) ;
  }
}