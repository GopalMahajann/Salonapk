import 'package:flutter/material.dart';
class  Makeup extends StatefulWidget {
  const  Makeup({Key? key}) : super(key: key);

  @override
  State<Makeup> createState() => _Feedback1State();
}

class _Feedback1State extends State<Makeup> {

  final Color textFieldColor = Color(0xFFF0F0F0);
  final Color begroundcColor = Color(0xFFFFFFF);
  final shape = StadiumBorder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.35,
              child:  Image.network(
                'https://cdn.pixabay.com/photo/2017/08/06/06/54/salon-2589649_1280.jpg', // Replace with the actual image URL
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
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
              height: MediaQuery.of(context).size.height * 0.70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 32,top: 17),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              'Bridal Beauty Makeup',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Completed Package Offer till Sep 18, 2019',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Text(
                              'Women want to feel attractive. We offer timeless beauty package to accentuate their natural beauty so they can feel beautiful in every day.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff333333),
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 32,),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Service',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Hairstyling",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Corner Lashes",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Makeup",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Body Glowing",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Eyebrows",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total: ₹280.30',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Hair color",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Nail",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Retoch",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Facial",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.done,
                                      //FontAwesomeIcons.check,  // Use the appropriate icon from FontAwesomeIcons
                                      color: Colors.red,      // You can change the color as needed
                                      size: 24.0,               // You can adjust the size as needed
                                    ),
                                    SizedBox(width: 11,),
                                    Text("Spa",style:TextStyle(fontSize: 16)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 51,),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Container(
                          decoration: ShapeDecoration(
                              shape: shape,
                              gradient: LinearGradient(
                                colors: [Color(0xFFFE9654), Color(0xFFFD6C57)],
                              )
                          ),
                          child: ElevatedButton(
                              onPressed: (){
                               // Navigator.pushReplacement(context,
                                 //   MaterialPageRoute(builder: (context)=>  const Mainone()));
                              },style: ElevatedButton.styleFrom(
                            minimumSize: const Size(327, 44),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ), child: const Text("Book now",style: TextStyle(color: Colors.white,fontSize: 16),)),
                        ),
                      ),
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