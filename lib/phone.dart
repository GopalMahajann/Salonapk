import 'package:flutter/material.dart';
import 'package:saloon/loginone.dart';
import 'package:saloon/otp.dart';
class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {


  final TextEditingController textEditingControllerEmail = TextEditingController();

  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
  final shape = StadiumBorder();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false, // This removes the default back arrow icon
        leading: IconButton(
          icon: Container(
            height: 30, // Set your desired height here
            padding: const EdgeInsets.only(left: 24),
            child: Image.asset("assets/images/signuparrow.png"),
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginone()));
          },
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.only(right: 24.0,left: 24),
        child: Column(
          children: [
             Column(
               children: [
                 Text("Verify your",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                 Text("Email Id",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
               ],
             ),
             SizedBox(height: 25,),
             Text("We have sent you an SMS with a code to gopal123@gmail.com",textAlign:TextAlign.center, style: TextStyle(fontSize: 15)),
             SizedBox(height: 25,),
            Container(
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              height: 44,
              //width: 327,
              child: TextField(
                  autofocus: false,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "Email address",hintStyle: TextStyle(color: Color(0xff9B9B9B),fontSize: 15),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                      filled: true,
                      fillColor: Color(0xffF0F0F0), //#F0F0F0
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(24)
                      )
                  )
                //border: InputBorder.none,
              ),),
             SizedBox(height: 30,),
             Container(
              decoration: ShapeDecoration(
                  shape: shape,
                  gradient: LinearGradient(
                    colors: [Color(0xFFFE9654), Color(0xFFFD6C57)],
                  )
              ),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>  const PhoneVerification()));
                  },style: ElevatedButton.styleFrom(
                minimumSize: const Size(327, 44),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                primary: Colors.transparent,
                shadowColor: Colors.transparent,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ), child: const Text("Continue",style: TextStyle(color: Colors.white,fontSize: 16),)),
            ),
          ],
        ),
      ),
    );
  }
}
