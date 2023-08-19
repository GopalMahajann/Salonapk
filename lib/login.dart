import 'package:flutter/material.dart';
import 'package:saloon/loginone.dart';
import 'package:saloon/map.dart';
class  Login extends StatefulWidget {
  const  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Feedback1State();
}

class _Feedback1State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/beground.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 82,
                      height: 82,
                      child: Image.asset("assets/images/dummylogo.png"),
                      decoration: BoxDecoration(
                          color: Colors.red,
                        borderRadius: BorderRadius.circular(22)
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Book an Appointment for",
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("Salon Spa & Barber.",
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 35,),
                    ElevatedButton(onPressed: (){
                      /*Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>  const Profile()));*/
                    },
                        style: ElevatedButton.styleFrom(
                       minimumSize:  Size(210, 50),
                      //  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 14.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)
                        ),
                        primary: Colors.deepPurpleAccent,
                        backgroundColor: Color(0xffFD6C57), //0xffFD6C57

                    ),
                        child:  Row(
                      children: [
                        SizedBox(width: 15,),
                        Image.asset("assets/images/googleelevatedl.png"),
                        SizedBox(width: 15,),
                        Row(
                          children: [
                            Text("Connect with",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 5,),
                            Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    )),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>  const Loginone()));
                    },style: ElevatedButton.styleFrom(
                        minimumSize:  Size(210, 50),
                        //  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 14.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)
                        ),
                        primary: Colors.deepPurpleAccent,
                        backgroundColor: Color(0xff3885FF)//0xffFD6C57
                    ), child:  Row(
                      children: [
                        SizedBox(width: 15,),
                        Image.asset("assets/images/facebookelevated-fill.png"),
                        SizedBox(width: 11,),
                        Row(
                          children: [
                            Text("Connect with",style: TextStyle(color: Colors.white),),
                            SizedBox(width: 5,),
                            Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    )),
                    SizedBox(height: 25,),
                  ],
                ),


              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.white)),
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=> const Loginone()));
                  }, child: Text("Sign in",style: TextStyle(color: Colors.red),))
                ],
              ),

            ],
          ),
        )
    );
  }
}