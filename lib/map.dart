import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:saloon/filter.dart';
class BarberShopData {
  final String imagePath;
  final String name;
  final double distance;
  final String address;
  final double rating;
  final String openingHours;

  BarberShopData({
    required this.imagePath,
    required this.name,
    required this.distance,
    required this.address,
    required this.rating,
    required this.openingHours,
  });
}

void main() {
  runApp(MaterialApp(
    home: Mapp(),
  ));
}

class Mapp extends StatefulWidget {
  const Mapp({Key? key}) : super(key: key);

  @override
  State<Mapp> createState() => _MapState();
}

class _MapState extends State<Mapp> {
  TextEditingController _controller = TextEditingController();
  bool _showClearIcon = false;
  Set<Marker> _markers = {};
  bool _showSheet = false;

  final List<Map<String, dynamic>> items = [
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
      body: Stack(
        children: [
          Column(
            children: [
              SafeArea(
                child: Container(
                  color: Color(0xffF8F8F8),
                  height: 160,
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your location",
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Filter(),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.filter_alt_rounded,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/mainscreen_location.png",
                                  height: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "San Francisco City",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 20),
                                Image.asset(
                                  "assets/images/mainscreenic_direction.png",
                                  height: 17,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 11,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(width: 0.001),
                          ),
                          height: 48,
                          child: TextField(
                            autofocus: false,
                            controller: _controller,
                            onChanged: (value) {
                              setState(() {
                                _showClearIcon = value.isNotEmpty;
                                //_showSheet = value == 's';
                                _showSheet = value == 's' || value == 'sa' || value == 'sal'|| value == 'S'
                                    || value == 'salon'|| value == 'Salon';
                              });
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search, color: Colors.grey),
                              hintText: "Salon..",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
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
                              suffixIcon: _showClearIcon
                                  ? IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    _controller.clear();
                                    _showClearIcon = false;
                                  });
                                },
                              )
                                  : null,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(22.7208331, 75.8807033),
                    zoom: 15,
                  ),
                  markers: _markers,
                  onMapCreated: (GoogleMapController controller) {
                    setState(() {
                      _markers.add(
                        Marker(
                          markerId: MarkerId('current_location'),
                          position: LatLng(22.7208331, 75.8807033),
                          infoWindow: InfoWindow(title: 'Your Location'),
                        ),
                      );
                    });
                  },
                ),
              ),
            ],
          ),
          if (_showSheet)
            DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.2,
              maxChildSize: 0.8,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      height: 1000,
                      margin: EdgeInsets.only(left: 20, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Salon Nearby',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Found 320 place near San Francisco",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 500,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                              Column(
                              children: items.map((item) {
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
                            fontSize: 12,
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
