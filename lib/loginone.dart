import 'package:flutter/material.dart';
import 'package:saloon/forget.dart';
import 'package:saloon/phone.dart';
import 'package:saloon/singup.dart';
class  Loginone extends StatefulWidget {
  const  Loginone({Key? key}) : super(key: key);

  @override
  State<Loginone> createState() => _Feedback1State();
}

class _Feedback1State extends State<Loginone> {

  final Color textFieldColor = Color(0xFFF0F0F0);
  final Color begroundcColor = Color(0xFFFFFFF);
  final shape = StadiumBorder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
    body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/beground.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            //height: 480 ,
            //width: 375,//MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width * 1.0, // 80% of the screen width
            height: MediaQuery.of(context).size.height * 0.57,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0,left: 24,top: 32,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                      Text(
                        'Login to your account',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        height: 44,
                       // width: 327,
                        child: TextField(
                          autofocus: false,
                          //style: TextStyle(color: Colors.red),
                          decoration: InputDecoration(
                          hintText: "Email",hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
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
                      SizedBox(height: 30,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        height: 44,
                       // width: 327,
                        child: TextField(
                            autofocus: false,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                hintText: "Password",hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
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
                                  MaterialPageRoute(builder: (context)=>  const PhoneNumber()));
                            },style: ElevatedButton.styleFrom(
                          minimumSize: const Size(327, 44),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ), child: const Text("Login",style: TextStyle(color: Colors.white,fontSize: 16),)),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Forgot()),
                          );
                        },
                        child: Text("Forgot your password ?",
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 14),),
                      ),
                    ],
                  ),
                     /* TextButton(onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>  const Forgot()));
                  }, child:
                  Text("Forget your password ?", style: TextStyle(color:
                  Colors.grey,fontWeight: FontWeight.bold,fontSize: 14),)),*/
                     // SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text("Don't have an account ?",style: TextStyle(color: Colors.grey))),
                      /*TextButton(onPressed: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=>  const Signup()));
                      },
                          child: Text("Sign up",style: TextStyle(color: Colors.red,fontSize: 14),))*/
                      SizedBox(width: 5,),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text("Sign up",style: TextStyle(color: Colors.red,fontSize: 14),))
                    ],
                  ),
                  //SizedBox(height: 1,),
                  ]
              ),
            ),
          ),
        ),
      ],
    ),
  );

  }
}