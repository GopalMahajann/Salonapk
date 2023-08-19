import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:saloon/mainone.dart';
import 'package:saloon/map.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  double _rating = 0;
  double height =0.0,width=0.0;
  final List<String> imagePaths = [
    "assets/images/secondemo.png",
    "assets/images/secondemo.png",
    "assets/images/secondemo.png",
    "assets/images/secondemo.png",
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
               // SizedBox(height: 10,),
                Container(
                  height: 133,
                  color: Colors.black12,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.redAccent,// Set your desired width
                        height: 150, // Set your desired height
                      /*  child: Image.network(
                          "https://www.wallp"
                              "aperup.com/uploads/wallpapers/2014/10/21/489485/b807c2282ab0a491bd5c5c1051c6d312-700.jpg",fit: BoxFit.contain,
                        ),*/
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 5,top: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7,)) ,
                              child: IconButton(
                                icon: Image.asset('assets/images/slider_Arrow_1256499.png',height: 20,color: Colors.black),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Mainone()),
                                  );
                                },
                              ),
                            ),
                            IconButton(
                              icon: Image.asset('assets/images/slider_bookmark_660526.png',height: 25),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Mainone()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                  ],
                  )

                ),
                Container(
                  color: Color(0xffF8F8F8),  //#F8F8F8D9
                  child: Padding(
                    padding: const EdgeInsets.only(top:25.0,left: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 28,
                            width: 84,
                            child: OutlinedButton(
                              onPressed: () {
                                // Button action
                              },
                              child: Text(
                                "Open",
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                primary: Colors.green,
                                side: BorderSide(
                                  color: Colors.green,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Denial Willaim",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                        SizedBox(height: 4,),
                        Text("Barberman at redboxbarber",style: TextStyle(color: Colors.red,fontSize: 10)),
                        SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBar.builder(
                              initialRating: _rating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 22.0,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (rating) {
                                setState(() {
                                  _rating = rating;
                                });
                              },
                            ),
                            Text("(126 Reviews)",style: TextStyle(color: Colors.grey,fontSize: 11),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset("assets/images/profile_call_243797.png"),
                                      ),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue,
                                    ),
                                      height: 45,
                                      width: 45
                                  ),
                                  Text("Call",style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                              SizedBox(width: 13,),
                              Column(
                                children: [
                                  Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset("assets/images/profileCalendar_31040.png"),
                                      ),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepPurple,
                                      ),
                                      height: 45,width: 45
                                  ),
                                  Text("Book",style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                              //Image.asset("assets/images/profileCalendar_31040.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: _buildCustomTabBarrr())
              ],
            ),
          ),
          Positioned(
            top: (height - width * 0.3) * 0.16, // Adjust this value as needed
            left: width * 0.3,
            child: Container(
              height: width * 0.3,
              width: width * 0.4,
              child: Image.asset("assets/images/profile_profile.png"),
            ),
          ),
        ],
      ),

    );
  }


  Widget _buildCustomTabBarrr() {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            color: Color(0xffF8F8F8),
            child: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey, // Customize the unselected tab label color
              tabs: [
                _buildTabItem('Basic Info', ),
                _buildTabItem('Portfolio',),
                _buildTabItem('Review', ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Business name'),
                                Text("Start Form",style: TextStyle(fontSize: 12)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Redbox Barber'),
                                Text("₹ 120",style: TextStyle(fontSize: 12,color: Colors.redAccent)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Opning Hours",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Monday - Friday"),
                                Text("8:30AM - 9:30PM"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Monday - Friday"),
                                Text("8:30AM - 9:30PM"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Address',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('030 Zulaf Green O SD',style: TextStyle(color: Colors.grey)),
                                  Text(' United state America',style: TextStyle(color: Colors.grey)),
                                  SizedBox(height: 2,),
                                  Row(
                                    children: [
                                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Mapp()),);},
                                          child: Image.asset('assets/images/slider_direction.png',height: 13,)),
                                      SizedBox(width: 4,),
                                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Mapp()),);},
                                          child: Text('Get direction',style: TextStyle(color: Colors.red))),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(), // To create space between texts and image
                              Expanded(
                                flex: 5,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Mapp()),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/mapimagenew.png',
                                        fit: BoxFit.contain,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Photos",style: TextStyle(fontWeight: FontWeight.bold)),
                            TextButton(onPressed: (){}, child: Text("View All",style: TextStyle(color: Colors.grey),)),
                          ],
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (var i = 0; i < imagePaths.length; i++)
                                Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(13),
                                        child: Image.asset(
                                          imagePaths[i],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: i == imagePaths.length - 1 ? 0 : 12),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text("wede"),
                ),
                Center(
                  child: Text("wede"),
                ),
                // Add your content for each tab here
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildTabItem(String title) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(icon),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
