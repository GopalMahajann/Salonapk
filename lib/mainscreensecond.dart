import 'package:flutter/material.dart';
import 'package:saloon/bookappoinmenttwo.dart';
import 'package:saloon/filter.dart';
import 'package:saloon/mainone.dart';
import 'package:saloon/profile.dart';

class DynamicColumnData {
  final String imagePath;
  final String text;

  DynamicColumnData({required this.imagePath, required this.text});
}
class Mainscreensecond extends StatefulWidget {
  const Mainscreensecond({Key? key}) : super(key: key);

  @override
  State<Mainscreensecond> createState() => _MainscreensecondState();
}

class _MainscreensecondState extends State<Mainscreensecond> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Favorites')),
    Center(child: Text('Profile')),
    Center(child: Text('Settings')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  final List<Map<String, dynamic>> items = [
    {"imagePath": "assets/images/mainscreensecondcircle1.png", "text": "Milk west"},
    {"imagePath": "assets/images/mainscreensecondtwo.png", "text": "Thomas"},
    {"imagePath": "assets/images/mainscreenseondthree.png", "text": "Kevin Doyel"},
    {"imagePath": "assets/images/mainscreensecondfour.png", "text": "Milk west"},
    {"imagePath": "assets/images/mainscreensecondcircle1.png", "text": "Milk west"},
  ];

  final List<String> categories = [
    "All",
    "Hairstyle",
    "Beauty & Spa",
    "Makeup",
    "Beauty & Spa",
    "Makeup",
  ];


  final List<Map<String, dynamic>> itemsss = [
    {
      "imagePath": "assets/images/secondemo.png",
      "title": "RedBoxBarber",
      "distance": "1.2 km",
      "address": "288 McClure Court, Arkansas",
      "rating": "3.5",
      "workingHours": "8:30am - 9:00pm"
    },

    {
      "imagePath": "assets/images/secondemo.png",
      "title": "RedBoxBarber",
      "distance": "1.2 km",
      "address": "288 McClure Court, Arkansas",
      "rating": "3.5",
      "workingHours": "8:30am - 9:00pm"
    },
    {
      "imagePath": "assets/images/secondemo.png",
      "title": "RedBoxBarber",
      "distance": "1.2 km",
      "address": "288 McClure Court, Arkansas",
      "rating": "3.5",
      "workingHours": "8:30am - 9:00pm"
    },
    // Add more items as needed
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color:  Color(0xffF8F8F8),
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0,left: 20,top: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your location",style: TextStyle(fontSize: 12,color: Colors.grey)),
                        IconButton(onPressed: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=>  const Filter()));

                        }, icon: Icon(Icons.filter_alt_rounded,size: 30,))
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/mainscreen_location.png",height: 22),
                            SizedBox(width: 5,),
                            Text("San Francisco City",style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 20,),
                            Image.asset("assets/images/mainscreenic_direction.png",height: 16),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                          height: 48,
                          width: 258,
                          child: TextField(
                              autofocus: false,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search,color: Colors.grey),
                                  hintText: "Salon",hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                                  //contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                                  filled: true,
                                  fillColor: Color(0xffF0F0F0),//#8E8E93
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)
                                  )
                              )
                            //border: InputBorder.none,
                          ),),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=>  const Mainone()));
                        }, child: Text("Cancel",style: TextStyle(color: Colors.red),)),
                      ],
                    )
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1.0,top: 5,right: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (var category in categories)
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          category,
                          style: TextStyle(
                            color: category == "All" ? Colors.black : Colors.grey,
                            fontWeight: category == "All" ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ),
                  ],
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Popular artist",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 30,right: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: items.map((item) {
                    return Padding(
                      padding: EdgeInsets.only(right: 8),
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
                                  child: Image.asset(item["imagePath"]),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            item["text"],
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text("Result Found",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
                    SizedBox(width: 5,),
                    Text("(120)",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 15),
              child: Column(
                children: itemsss.map((item) {
                  return Column(
                    children: [
                      Container(
                        height: 113,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13),
                                  child: Image.asset(
                                    item["imagePath"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 13.0, left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item["title"],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/sec_slocation.png",
                                                height: 13,
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                item["distance"],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        item["address"],
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/sec_s.star.png",
                                            height: 12,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            item["rating"],
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item["workingHours"],
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 11,
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.red,
                                            ),
                                            child: Text(
                                              "Book",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),




      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if (index == 4) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            }
            if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bookappoinmenttwo()),
              );
            }
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mainscreensecond()),
              );
            }
          });
        },
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.red : Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp, color: _selectedIndex == 1 ? Colors.red : Colors.grey),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forward_to_inbox, color: _selectedIndex == 2 ? Colors.red : Colors.grey),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range, color: _selectedIndex == 3 ? Colors.red : Colors.grey),
            label: 'Appiontment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _selectedIndex == 4 ? Colors.red : Colors.grey),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
      ),
    );
  }
}
