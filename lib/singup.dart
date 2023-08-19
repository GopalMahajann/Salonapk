import 'package:flutter/material.dart';
import 'package:saloon/loginone.dart';
import 'package:saloon/mainone.dart';
import 'package:intl/intl.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  State<Signup> createState() => _SignupState();

}

class _SignupState extends State<Signup> {


  TextEditingController dateInput = TextEditingController();
  bool isDateSelected = false;
  @override
  void initState() {
    super.initState();
  }


  final shape = StadiumBorder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0,right: 24),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             SizedBox(height: 5,),
              Text("Create an Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff000000))),
              Column(
                children: [
                  SizedBox(height: 8,),
                  Container(
                    //decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 44,
                    //width: 327,
                    child: TextField(
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "User name",hintStyle: TextStyle(color: Color(0xff9B9B9B),fontSize: 15),
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
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 44,
                    //width: 327,
                    child: TextField(

                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Phone number",hintStyle: TextStyle(color: Color(0xff9B9B9B),fontSize: 15),
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
                    //width: 327,
                    child: TextFormField(
                      controller: dateInput,
                      decoration: InputDecoration(
                        //hintText: "Date of birth", // Set the hint text
                        hintText: isDateSelected ? "" : "Date of birth",
                        hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                        filled: true,
                        fillColor: Color(0xffF0F0F0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.calendar_today, color: Colors.black54),
                          onPressed: _selectINDate,
                        ),
                      ),
                      readOnly: true,
                      onTap: _selectINDate,
                    ),),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 44,
                    //width: 327,
                    child: TextField(
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Password",hintStyle: TextStyle(color: Color(0xff9B9B9B),fontSize: 15),
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
                    //width: 327,
                    child: TextField(
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Confirm password",hintStyle: TextStyle(color: Color(0xff9B9B9B),fontSize: 15),
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
                              MaterialPageRoute(builder: (context)=>  const Mainone()));
                        },style: ElevatedButton.styleFrom(
                      minimumSize: const Size(327, 44),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                    ), child: const Text("Sign up",style: TextStyle(color: Colors.white,fontSize: 16),)),
                  ),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      Text("By continuning sign up you are agree to fowlling",style: TextStyle(fontSize: 11,color: Color(0xff666666))),
                      Text("term and condition without reservation",style: TextStyle(fontSize: 11,color: Color(0xff666666))),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account ?",style: TextStyle(color: Color(0xff858585),fontSize: 14)),
                  TextButton(
                      onPressed: (){}, child: Text("Sign in",style: TextStyle(
                      color: Color(0xffFE9654),
                      fontSize: 14))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _selectINDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.highContrastLight(
              primary: Colors.red,
            ),
            dialogBackgroundColor: Colors.white,
            textTheme: TextTheme(
              // Set the style for the selected date text
              bodyText1: TextStyle(color: Colors.black),
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() {
        dateInput.text = formattedDate;
      });
    }
  }


}

