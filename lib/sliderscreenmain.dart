import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:saloon/mainone.dart';
import 'package:saloon/makeup.dart';
import 'package:saloon/map.dart';


class Slidermain extends StatefulWidget {
  const Slidermain({Key? key}) : super(key: key);
  @override
  State<Slidermain> createState() => _SlidermainState();
}
class _SlidermainState extends State<Slidermain>with TickerProviderStateMixin{



  final List<String> imageAssetPaths = [
    'assets/images/img_17.png',
    'assets/images/img_19.png',
    'assets/images/img_8.png',
  ];


  final CarouselController carouselControllerller  = CarouselController();
  final List<Map<String, dynamic>> items = [
    {
      'imagePath': 'assets/images/mainscreensecondcircle1.png',
      'name': 'Milk west',
      'description': 'Milk west',
    },
    {
      'imagePath': 'assets/images/mainscreensecondtwo.png',
      'name': 'Milk west',
      'description': 'Milk west',
    },
    {
      'imagePath': 'assets/images/mainscreenseondthree.png',
      'name': 'Milk west',
      'description': 'Milk west',
    },
    {
      'imagePath': 'assets/images/mainscreensecondfour.png',
      'name': 'Milk west',
      'description': 'Milk west',
    },
    {
      'imagePath': 'assets/images/mainscreensecondcircle1.png',
      'name': 'Milk west',
      'description': 'Milk west',
    },
  ];





  double _rating = 3;
  String selectedValue = "Male";
  String selectedOption = 'Relexed Bob(₹50)';
  List<String> options = ['Relexed Bob(₹50)', 'Option 2', 'Option 3', 'Option 4'];

  final List<Map<String, dynamic>> entriesss = [
    {
      'imageUrl': 'https://cdn.pixabay.com/photo/2017/08/24/05/59/barber-shop-2675511_640.jpg',
      'title': 'Bridal Beauty Makeup',
      'description': 'Complete offer package till September',
      'price': '₹160',
    },
    {
      'imageUrl': 'https://cdn.pixabay.com/photo/2017/08/24/05/59/barber-shop-2675511_640.jpg',
      'title': 'Bridal Beauty Makeup',
      'description': 'Complete offer package till September',
      'price': '₹160',
    },
  ];


  final List<Map<String, dynamic>> entries = [
    {
      'imagePath': 'assets/images/mainscreennoun_barbershop_79139 (1).png',
      'title': 'Haircut',
      'types': '10 Types',
    },
    {
      'imagePath': 'assets/images/mainscreennoun_barbershop_79139 (1).png',
      'title': 'Haircut',
      'types': '10 Types',
    },
    {
      'imagePath': 'assets/images/mainscreennoun_barbershop_79139 (1).png',
      'title': 'Haircut',
      'types': '10 Types'
    },
    {
      'imagePath': 'assets/images/mainscreennoun_barbershop_79139 (1).png',
      'title': 'Haircut',
      'types': '10 Types',
    },
  ];



  final List<String> imagePaths = [
    'assets/images/img_15.png',
    'assets/images/img_16.png',
    'assets/images/galaryimg_11.png',
    'assets/images/img_13.png',
    'assets/images/img_15.png',
    'assets/images/img_16.png',
  ];


  final List<String> imagePathsss = [
    "assets/images/secondemo.png",
    "assets/images/secondemo.png",
    "assets/images/secondemo.png",
    "assets/images/secondemo.png",
  ];


  final List<Map<String, dynamic>> reviews = [
    {
      "name": "Julia",
      "rating": 4.5,
      "timestamp": "2 hours ago",
      "comment": "Ben johnson is very friendly polite when I came here in August 2019",
    },

    {
      "name": "Julia",
      "rating": 4.5,
      "timestamp": "2 hours ago",
      "comment": "Ben johnson is very friendly polite when I came here in August 2019",
    },

    {
      "name": "Julia",
      "rating": 4.5,
      "timestamp": "2 hours ago",
      "comment": "Ben johnson is very friendly polite when I came here in August 2019",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 36 / 20,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 4),
                      enableInfiniteScroll: false,
                      viewportFraction:1, // Allow each item to take up full viewport width
                      scrollPhysics: NeverScrollableScrollPhysics(),
                    ),
                    items: imageAssetPaths.map((path) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(path, fit: BoxFit.cover),
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.transparent, Colors.black54],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 14,top: 10),
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
                  Positioned(
                    //bottom: 2,
                    left: 20,
                    top: 110,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RedBox Barber Salon",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "445 Morgon camp,new dalton,ny, iran",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 4,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                RatingBar.builder(
                                  //glowColor: Colors.white,
                                  initialRating: _rating,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  unratedColor: Colors.white,
                                  itemSize: 23.0,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  onRatingUpdate: (rating) {
                                    setState(() {
                                      _rating = rating;
                                    });
                                  },
                                ),
                                SizedBox(width: 3,),
                                Text(
                                  "(126 reviews)",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 78,
                              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
                              child: OutlinedButton(
                                onPressed: () {
                                  // Button action
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  primary: Colors.green,
                                  side: BorderSide(
                                    color: Colors.green,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: InkWell(
                          child: Image.asset("assets/images/slidernewlatend_call.png",
                            width: 40,
                          )),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                        child: Image.asset("assets/images/slidernoun_Map_2443283.png",
                         // height: 45,
                          width: 28,
                        )),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Mapp()),);},
                        child: Image.asset("assets/images/sharslideric_share.png",
                         // height: 45,
                          width: 28,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Salon Speciallist",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
      Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((item) {
              return Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(item['imagePath']),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Column(
                      children: [
                        Text(item['name'], style: TextStyle(fontSize: 13)),
                        Text(item['description'], style: TextStyle(fontSize: 11, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
              SizedBox(height: 11,),
              Expanded(
                child: _buildCustomTabb(),
              ),
            ],
          ),
        ),
      ),
    );
  }

















  Widget _buildCustomTabb() {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            isScrollable: false,
            indicatorWeight: 2.0,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            physics: NeverScrollableScrollPhysics(
              parent: ClampingScrollPhysics()
            ),
            tabs: [
              _buildTabItem('About'),
              _buildTabItem('Service'),
              _buildTabItem('Gallery'),
              _buildTabItem('Review'),
            ],
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('About',style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Redbox barber salon is one of the most powerfull brands in tha hair & beuaty care sector in Northen India, that has given hairstyling a new horizon",style: TextStyle(fontSize: 12)),
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
                          Row(
                          children: [
                          for (var imagePath in imagePathsss)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                        ),
                          ),
                        SizedBox(width: 20),
                      ],
                    ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: (){
                              //Navigator.pushReplacement(context,
                                //  MaterialPageRoute(builder: (context)=>  const Mainone()));
                            },style: ElevatedButton.styleFrom(minimumSize: const Size(340, 40),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
                            primary: Colors.deepPurpleAccent,
                            backgroundColor: Colors.red
                        ), child: const Text("Book",style: TextStyle(color: Colors.white,fontFamily: "mediumm"),)),
                      ],
                    ),
                  ),
                ),


                DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 350,
                        height: 38,
                        decoration: BoxDecoration(
                          //color: Colors.white60,
                            border: Border.all(color: Colors.red,width: 1)

                        ),
                        // Background color for the whole TabBar
                        child: TabBar(
                          //overlayColor:MaterialStateProperty.all<Color>(Colors.red),
                          indicator: BoxDecoration(
                            // color: Colors.red,
                            border: Border(
                              bottom: BorderSide(color: Colors.red, width: 2.0),
                            ),
                          ),
                          labelColor: Colors.red,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            _buildTabItemm('Service'),
                            _buildTabItemm('Package'),
                            _buildTabItemm('Price'),
                          ],

                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(), //
                        children: [
                          SingleChildScrollView(
                      child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Column(
                        children: [
                          for (var entry in entries)
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color: Color(0xffFD6C57),
                                            borderRadius: BorderRadius.circular(14),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: Image.asset(entry['imagePath']),
                                          ),
                                        ),
                                        SizedBox(width: 11),
                                        Column(
                                          children: [
                                            Text(entry['title'], style: TextStyle(fontSize: 16)),
                                            Text(entry['types'], style: TextStyle(fontSize: 12, color: Colors.grey)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 40,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF0F0F0),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: DropdownButton<String>(
                                            value: selectedOption,
                                            onChanged: (newValue) {
                                              setState(() {
                                                selectedOption = newValue!;
                                              });
                                            },
                                            items: options.map((option) {
                                              return DropdownMenuItem<String>(
                                                value: option,
                                                child: Row(
                                                  children: [
                                                    // Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
                                                    SizedBox(width: 8), // Add space between icon and text
                                                    Text(option, style: TextStyle(fontSize: 12)),
                                                  ],
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 11),
                              ],
                            ),
                        ],
                      ),
                    ),
          ),
                          Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Makeup()),
              );
            },
            child: ListView.builder(
              itemCount: entriesss.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.network(
                          entriesss[index]['imageUrl'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          entriesss[index]['title'],
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("Book", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          entriesss[index]['description'],
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(entriesss[index]['price'], style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    SizedBox(height: 22),
                  ],
                );
              },
            ),
          ),
        ),
                          Center(child: Text("xyz")),
                          // Add your content for each tab here
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(right: 14.0, left: 12, top: 12),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: imagePaths.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("All Reviews",style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 18,),
                            //for(int i=0;i<5;i++)
                            Column(
                              children: [
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: reviews.map((review) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 66,
                                                height: 66,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 0.5,
                                                  ),
                                                ),
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/boolapp4Bitmap.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 14),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(review["name"]),
                                                  RatingBar.builder(
                                                    initialRating: review["rating"],
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemSize: 15.0,
                                                    itemBuilder: (context, _) => Icon(
                                                      Icons.star,
                                                      color: Colors.red,
                                                    ),
                                                    onRatingUpdate: (rating) {},
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Text(review["timestamp"], style: TextStyle(color: Colors.grey, fontSize: 12)),
                                        ],
                                      ),
                                      SizedBox(height: 7),
                                      Text(review["comment"], style: TextStyle(fontSize: 11)),
                                      SizedBox(height: 2),
                                      Divider(height: 0.1, color: Colors.grey, thickness: 0.5),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }





















  Tab _buildTabItemm(String text) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(fontSize: 11), // Adjust the font size here
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
          Text(title,style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }

}



