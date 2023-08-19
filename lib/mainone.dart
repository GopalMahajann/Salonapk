import 'package:flutter/material.dart';
import 'package:saloon/bookappoinmenttwo.dart';
import 'package:saloon/mainscreensecond.dart';
import 'package:saloon/profile.dart';
import 'package:saloon/sliderscreenmain.dart';
import 'filter.dart';


enum Gender { male, female, other }
class Mainone extends StatefulWidget {
  const Mainone({Key? key}) : super(key: key);
  @override
  State<Mainone> createState() => _MainoneState();
}

class _MainoneState extends State<Mainone> {





  int _selectedIndexx = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Favorites')),
    Center(child: Text('Profile')),
    Center(child: Text('Settings')),
  ];



  int selectedIndex = 0;
  void handleButtonPress(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  Widget buildTextButton(String text, int index) {
    return TextButton(
      onPressed: () {
        handleButtonPress(index);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.red),
          ),
          if (selectedIndex == index)
            Icon(
              Icons.check,
              color: Colors.green,
            ),
        ],
      ),
    );
  }


  final List<Map<String, dynamic>> services = [
    {
      'imagePath': 'assets/images/mainscreennoun_barbershop_79139 (1).png',
      'color': Color(0xffFD6C57),
      'title': 'Haircut',
      'places': '126 places',
    },
    {
      'imagePath': 'assets/images/mainscreennoun_dye_2415211.png',
      'color': Color(0xff172D40),
      'title': 'Coloring',
      'places': '60 places',
    },
    {
      'imagePath': 'assets/images/mainscreennoun_makeup_2139449.png',
      'color': Color(0xffFE457C),
      'title': 'Makeup',
      'places': '85 places',
    },
    {
      'imagePath': 'assets/images/mainscreennoun_dye_2415211.png',
      'color': Color(0xff615DD9),
      'title': 'Hairdryer',
      'places': '126 places',
    },
    {
      'imagePath': 'assets/images/mainscreennoun_Map_2443283.png',
      'color': Color(0xffFE9654),
      'title': 'Spa',
      'places': '24 places',
    },
  ];


  final List<Map<String, dynamic>> containerData = [
    {
      'imagePath': 'assets/images/img.png',
      'name': 'Redboxbarber',
      'rating': '4.0',
      'address': '288 McClure Court, Arkansas',
    },
    {
      'imagePath': 'assets/images/img.png',
      'name': 'Redboxbarber',
      'rating': '4.0',
      'address': '288 McClure Court, Arkansas',
    },
    {
      'imagePath': 'assets/images/img.png',
      'name': 'Redboxbarber',
      'rating': '4.0',
      'address': '288 McClure Court, Arkansas',
    },
    // Add more container data as needed
  ];
  @override
  Widget build(BuildContext context) {
    RangeLabels labelss = RangeLabels(values.start.toString(),values.end.toString());
    return Scaffold(
      resizeToAvoidBottomInset: false,
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               color: Color(0xffF8F8F8),//#F8F8F8
               height: 260,
               child: Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 11,left: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Hello john Doe',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                           IconButton(onPressed: (){
                             Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder: (context)=>  const Filter()));

                           }, icon: Icon(Icons.filter_alt_rounded,size: 30,))
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 24),
                       child: Column(
                         //mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Your location",style: TextStyle(fontSize: 12,color: Colors.grey)),
                           SizedBox(height: 3,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   Image.asset("assets/images/mainscreen_location.png",height: 22),
                                   SizedBox(width: 5,),
                                   Text("San Francisco City",style: TextStyle(fontWeight: FontWeight.bold)),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Image.asset("assets/images/mainscreenic_direction.png",height: 16),
                                   SizedBox(width: 5,),
                                   Text("CHANGE",style: TextStyle(color: Colors.red,fontSize: 11)),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 20,left: 20),
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                            // color: Colors.white,
                           border: Border.all(width: 0.001)
                         ),
                         height: 48,

                         child: TextField(
                             autofocus: false,
                             decoration: InputDecoration(
                               fillColor: Colors.white,
                               prefixIcon: Icon(Icons.search,color: Colors.grey),
                                 hintText: "search salon,spa and barber service",
                                 hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                                 //contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                                 filled: true,
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(15),
                                 borderSide: BorderSide(width: 0.2),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(15),
                                 borderSide: BorderSide(width: 0.2),
                               ),
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(15),
                                 borderSide: BorderSide(width: 0.2),
                               ),
                             ) //border: InputBorder.none,
                         ),),
                     ),
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20.0,right: 20,top: 22),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Top Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                   Text("View all",style: TextStyle(color: Colors.grey)),
                 ],
               ),
             ),
             Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 22, right: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: services.map((service) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: service['color'],
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Image.asset(service['imagePath']),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(service['title'], style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(service['places'], style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
             Padding(
               padding: const EdgeInsets.only(left: 20.0,right: 20,top: 22),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Popular Salon Nearby",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                   Text("View all",style: TextStyle(color: Colors.grey)),
                 ],
               ),
             ),
             Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 25, right: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var data in containerData)
                  Padding(
                    padding: const EdgeInsets.only(right: 11.0),
                    child: Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(11),
                                  topLeft: Radius.circular(11),
                                ),
                                child: Image.asset(
                                  data['imagePath'], // Use dynamic image path
                                  fit: BoxFit.cover,
                                  width: 300,
                                  height: 111,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14.0, right: 14, top: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data['name'], // Use dynamic name
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset("assets/images/mainscreenic_star.png", height: 12),
                                            SizedBox(width: 5),
                                            Text(data['rating'], style: TextStyle(fontSize: 11)), // Use dynamic rating
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14.0),
                                    child: Text(data['address'], style: TextStyle(fontSize: 12)), // Use dynamic address
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 0.5 * 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(11),
                                  bottomRight: Radius.circular(11),
                                ),
                                border: Border.all(color: Colors.grey, width: 0.5),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(11),
                                ),
                              ),
                              width: 80,
                              height: 36,
                              child: Center(
                                child: Text(
                                  "Book",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(width: 12),
              ],
            ),
          ),
        ),
             Padding(
               padding: const EdgeInsets.only(left: 20.0,right: 20,top: 22),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Special package & offer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                   Text("View all",style: TextStyle(color: Colors.grey)),
                 ],
               ),
             ),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Padding(
                 padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
                 child: Row(
                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                    /* Container(
                       height: 200,
                       child: Padding(
                         padding: const EdgeInsets.all(38.0),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(8),
                             child: Image.asset("assets/images/bannerone.png",fit: BoxFit.cover,height: 180,)),
                       ),
                     ),
                     Container(
                       height: 200,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 38.0,bottom: 38),
                         child: ClipRRect(
                             borderRadius: BorderRadius.circular(8),
                             child: Image.asset("assets/images/mainscren advtiment.png",fit: BoxFit.cover,height: 180,)),
                       ),
                     ),*/
                     ClipRRect(
                         borderRadius: BorderRadius.circular(8),
                         child: Image.asset("assets/images/banner212.png",fit: BoxFit.cover,height: 180,)),
                     SizedBox(width: 12,),
                     ClipRRect(
                         borderRadius: BorderRadius.circular(8),
                         child: Image.asset("assets/images/mainscren advtiment.png",fit: BoxFit.cover,height: 180,)),
                   ],
                 ),
               ),
             ),
             SizedBox(height: 31,),
           ],
         ),
       ),
     /* floatingActionButton: FloatingActionButton(
          onPressed:(){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>  const Mapp()));
          },child: Icon(Icons.ac_unit_sharp),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndexx,
        onTap: (int index) {
          setState(() {
            _selectedIndexx = index;
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
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Slidermain()),
              );
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _selectedIndexx == 0 ? Colors.red : Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp, color: _selectedIndexx == 1 ? Colors.red : Colors.grey),
            //icon: Icon(Icons.location_on_sharp,color: Colors.grey),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
           // icon: Icon(Icons.forward_to_inbox,color: Colors.grey),
            icon: Icon(Icons.forward_to_inbox, color: _selectedIndexx == 2 ? Colors.red : Colors.grey),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            //icon: Icon(Icons.date_range,color:Colors.grey),
            icon: Icon(Icons.date_range, color: _selectedIndexx == 3 ? Colors.red : Colors.grey),
            label: 'Appiontment',
          ),
          BottomNavigationBarItem(
            //icon: Icon(Icons.person,color: Colors.grey),
            icon: Icon(Icons.person, color: _selectedIndexx == 4 ? Colors.red : Colors.grey),
            label: 'Profile',
          ),
        ],
       // currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        //onTap: _onItemTapped,
      ),

    );
  }


  RangeValues values = RangeValues(0,1);
  /*void _openBottomSheettt(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height:900,
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text(
                  "Service",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 20,),
                Column(
                 // crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Hair",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Makeup",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Haircoloring",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Spa",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Facial Makeup",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Saving",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("Rating",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: _rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 30.0,
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
                        SizedBox(width: 20),
                        Text(
                          _rating.toStringAsFixed(1), // Convert rating to a string with one decimal place
                        ),
                      ],
                    ),


                    SizedBox(height: 15,),
                    //SizedBox(height: 20),
                  ],
                ),
                Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<Gender>(
                        title: Text('Male'),
                        value: Gender.male,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<Gender>(
                        title: Text('Female'),
                        value: Gender.female,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<Gender>(
                        title: Text('Other'),
                        value: Gender.other,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Distance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text(
                      'Range: ${_lowerValue.round()} - ${_upperValue.round()}',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                RangeSlider(
                  values: RangeValues(_lowerValue, _upperValue),
                  min: 0,
                  max: 100,
                  divisions: 100,
                  onChanged: (RangeValues newValues) {
                    // Only update the values if the user is dragging the slider
                    setState(() {
                      _lowerValue = newValues.start;
                      _upperValue = newValues.end;
                    });
                  },
                  onChangeStart: (RangeValues startValues) {

                  },
                  onChangeEnd: (RangeValues endValues) {


                  },
                ),
                SizedBox(height: 20,),
                Text("Sort by",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTextButton("Most Popular", 0),
                    buildTextButton("Cost low to high", 1),
                    buildTextButton("Cost high to low", 2),
                  ],
                ),
                Text("Price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "     #     ",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "   ##   ",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "   ###   ",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }*/
}
