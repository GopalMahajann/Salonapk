import 'package:flutter/material.dart';
import 'package:saloon/loginone.dart';
import 'package:saloon/singup.dart';
class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final shape = StadiumBorder();
  @override
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(23)),
            height: 380,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xffFD6C57),
                        width: 4.0,)),
                  child: Container(
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                   border: Border.all(
                  color: Colors.white,
                  width: 9.0,)),
                    child: Image.asset('assets/images/lock.png', height: 70, width: 70,),
                  ),
                ),
                //SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'Code has been sent to reset',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'to new password.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
               ///SizedBox(height: 8),
                Column(
                  children: [
                    Text(
                      'You will shortly receive an email',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'with code to set a new password',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Container(
                  decoration: ShapeDecoration(
                      shape: shape,
                      gradient: LinearGradient(
                        colors: [Color(0xFFFE9654), Color(0xFFFD6C57)],
                      )
                  ),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                       // Navigator.pushReplacement(context,
                         //   MaterialPageRoute(builder: (context)=>  const Signup()));
                      },style: ElevatedButton.styleFrom(
                    minimumSize: const Size(340, 40),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ), child: const Text("Done",style: TextStyle(color: Colors.white,fontSize: 16),)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }




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
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0,right: 24),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 17,),
              Text("Fogot password",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              SizedBox(height: 11,),
              Text("Please enter your email addres you will "
                  "recived a code to create a new password via email",textAlign: TextAlign.center,style: TextStyle(fontSize: 13)),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 55,
                child: TextField(
                    autofocus: false,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: "Your email adderes",hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                        filled: true,
                        fillColor: Color(0xffF0F0F0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)
                        )
                    )
                  //border: InputBorder.none,
                ),),
              SizedBox(height: 28,),
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
                          MaterialPageRoute(builder: (context)=>  const Signup()));
                    },style: ElevatedButton.styleFrom(
                  minimumSize: const Size(327, 44),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ), child: const Text("Reset Password",style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(onPressed: (){
                  _showPopup(context);
                }, child: Text("popup",
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
