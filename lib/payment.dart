import 'package:flutter/material.dart';
import 'package:saloon/bookappoinnent.dart';
import 'package:saloon/mainone.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final shape = StadiumBorder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xffF0F0F0),
        title: Text("Booking Details", style: TextStyle(fontSize: 17)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Bookappoiment()),
            );
          },
        ),
      ),

      body:  Column(
        children: [
          //Divider(color: Colors.grey,thickness: 0.5),
          Container(
            height: 230,
           decoration: BoxDecoration(
             color:Colors.black12,
           ),

            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30,),bottomLeft: Radius.circular(30)),),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          //color: Colors.red,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset("assets/images/secondemo.png",fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                           // color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("RedBoxBarber",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/sec_s.star.png",height: 13),
                                        SizedBox(width: 5,),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 15.0),
                                          child: Text("1.2",style: TextStyle(color: Colors.grey,fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 2,),
                                Text("288 McClure Court, Arkansas",style: TextStyle(fontSize: 12,color: Colors.grey)),
                                SizedBox(height: 2,),
                                Row(
                                  children: [
                                    Image.asset("assets/images/sec_slocation.png",height: 12),
                                    SizedBox(width: 5,),
                                    Text("3.5",style: TextStyle(color: Colors.grey,fontSize: 12)),
                                  ],
                                ),
                                SizedBox(height: 2,),
                                Row(
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Services:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                                    Text("Haircut Facial and makeup",style: TextStyle(color: Colors.grey,fontSize: 11)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Text("Toatal :",style: TextStyle(color: Colors.black)),
                            Text("₹450",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
                          ],
                        )),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey,width: 0.3),
                        color: Color(0xffF0F0F0),
                        //#F0F0F0
                      borderRadius: BorderRadius.circular(16)
                    ),
                    width: 354,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                        ),
                        prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.date_range)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)
                      )),))
                ],
              ),
            ),

          ),
          Expanded(
              child:
              Container(
                decoration: BoxDecoration(
                 color: Colors.black12
                  //color: Color(0xffF0F0F0),
                  //color: Color(0xffF7F8F9)
                 // color:Colors.black12
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(right: 10,left: 10),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        //  Text("Payment Method"),
                         // TextButton(onPressed: (){}, child: Text("+ Add a new card",style: TextStyle(color: Colors.red),))
                        ],
                      ),
                    ),
                    SizedBox(height: 450,),
                    /*Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1.0,color: Colors.red),
              ),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly  ,
                children: [
                  Image.asset(
                    'assets/images/img_3.png', // Replace 'assets/image.png' with your PNG image path
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        'Credit/Debit card',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("Ending in 1560",style: TextStyle(fontSize: 10),)
                    ],
                  ),
                  SizedBox(width: 10),
                  Radio(
                    activeColor: Colors.red,
                    value: true,
                    groupValue: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.0,color: Colors.red),
                      ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly  ,
                        children: [
                          Image.asset(
                            'assets/images/img_4.png', // Replace 'assets/image.png' with your PNG image path
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                'Bank Account',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text("Ending in 9473",style: TextStyle(fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: 10),
                          Radio(
                            activeColor: Colors.red,
                            value: true,
                            groupValue: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.0,color: Colors.red),
                      ),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly  ,
                        children: [
                          Image.asset(
                            'assets/images/img_5.png', // Replace 'assets/image.png' with your PNG image path
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                'Paypal',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text("mr.sarfne@gmail.com",style: TextStyle(fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: 10),
                          Radio(
                            activeColor: Colors.red,
                            value: true,
                            groupValue: false,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),*/// _showPopup(context);
                   /* ElevatedButton(
                        onPressed: (){
                          _showPopup(context);
                         // Navigator.pushReplacement(context,
                           //   MaterialPageRoute(builder: (context)=>  const Mainone()));
                        },style: ElevatedButton.styleFrom(minimumSize: const Size(340, 40),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
                        primary: Colors.deepPurpleAccent,
                        backgroundColor: Colors.red
                    ), child: const Text("Continue with credit card",style: TextStyle(color: Colors.white,fontFamily: "mediumm"),)),*/
                    Container(
                      decoration: ShapeDecoration(
                          shape: shape,
                          gradient: LinearGradient(
                            colors: [Color(0xFFFE9654), Color(0xFFFD6C57)],
                          )
                      ),
                      child: ElevatedButton(
                          onPressed: (){
                            _showPopup(context);
                           // Navigator.pushReplacement(context,
                             //   MaterialPageRoute(builder: (context)=>  const Mainone()));
                          },style: ElevatedButton.styleFrom(
                        minimumSize: const Size(327, 44),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ), child: const Text("Continue with credit card",style: TextStyle(color: Colors.white,fontSize: 16),)),
                    ),
                  ],
                ),

              )),
        ],
      ),
    );
  }


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
                    child: IconButton(icon: Icon(Icons.done,color: Colors.redAccent,size: 50), onPressed: () {  },),
                    //Image.asset('assets/images/img_3.png', height: 70, width: 70,),
                  ),
                ),
                //SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'Your appoinment booking',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'is succesfully',
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
                      'You can view the appointment',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'booking info in the appoinment',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text("section",style: TextStyle(fontSize: 13),)
                  ],
                ),
                //SizedBox(height: 16),
                Column(
                  children: [
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
                          //  Navigator.pushReplacement(context,
                            //    MaterialPageRoute(builder: (context)=>  const Mainone()));
                          },style: ElevatedButton.styleFrom(
                        minimumSize: const Size(327, 44),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ), child: const Text("Continue Booking",style: TextStyle(color: Colors.white,fontSize: 16),)),
                    ),
                    SizedBox(height: 11,),
                    Text("Go to appoinmrnt",style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
// Navigator.pop(context); //