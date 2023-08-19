import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:saloon/mainone.dart';
enum Gender { male, female, other }
class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  double _rating = 0;
  Gender _selectedGender = Gender.male;
  final double startValue = 0.3; // Set the starting progress value here (0.0 to 1.0)
  final double endValue = 0.8;


  double _lowerValue = 0.0;
  double _upperValue = 10.0;
  int selectedIndex = 0;

  void handleButtonPress(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildTextButton(String text, int index) {
    return Container(
      height: 35, // Set the desired height for the button
      child: TextButton(
        onPressed: () {
          handleButtonPress(index);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: selectedIndex == index ? Colors.red : Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),
            ),
            if (selectedIndex == index) Icon(Icons.check, color: Colors.red),
          ],
        ),
      ),
    );

  }
  final shape = StadiumBorder();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF8F8F8), // Set the
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=> const Mainone()));
                },
                  child: Text("Cancel", style: TextStyle(color: Colors.red, fontSize: 17))),
            ),
          ),
          Expanded(
            child: Center(
              child: Text("Filter", style: TextStyle(fontSize: 17, color: Colors.black)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text("Done",textAlign:TextAlign.end  , style: TextStyle(color: Colors.red, fontSize: 17)),
            ),
          ),
        ],
       // centerTitle: true,
        automaticallyImplyLeading: false, // This removes the default back arrow icon
      ),
      body: Container(
        //margin: EdgeInsets.only(right: 16,left: 16),
        height: 900,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: Text("Service",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Wrap(
                      //alignment: WrapAlignment.center,
                      spacing: 6.0, // Adjust the spacing as needed
                      children: [
                        ColoredButton("Hair"),
                        ColoredButton("Makeup"),
                        ColoredButton("Haircoloring"),
                        ColoredButton("Spa"),
                        ColoredButton("Facial Makeup"),
                        ColoredButton("Saving"),
                      ],
                    ),
                    SizedBox(height: 37),
                    Text("Rating", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 5),
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
                        SizedBox(width: 28),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(_rating.toStringAsFixed(1),style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    SizedBox(height: 31),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: Text("Gender", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.only(left: 7.0,right: 16),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: RadioListTile<Gender>(
                        activeColor: Colors.red,
                        value: Gender.male,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        contentPadding: EdgeInsets.zero, // Remove all padding around the tile
                        dense: true,
                        title: Transform.translate(
                          offset: Offset(-10, 0), // Adjust this offset to remove spacing
                          child: Text('Male'),
                        ),
                        controlAffinity: ListTileControlAffinity.leading, // Align the radio button with the text
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<Gender>(
                        activeColor: Colors.red,
                        value: Gender.female,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        contentPadding: EdgeInsets.zero, // Remove all padding around the tile
                        dense: true,
                        title: Transform.translate(
                          offset: Offset(-10, 0), // Adjust this offset to remove spacing
                          child: Text('Female'),
                        ),
                        controlAffinity: ListTileControlAffinity.leading, // Align the radio button with the text
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<Gender>(
                        activeColor: Colors.red,
                        value: Gender.other,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        contentPadding: EdgeInsets.zero, // Remove all padding around the tile
                        dense: true,
                        title: Transform.translate(
                          offset: Offset(-10, 0), // Adjust this offset to remove spacing
                          child: Text('Other'),
                        ),
                        controlAffinity: ListTileControlAffinity.leading, // Align the radio button with the text
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Distance", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Range: ${_lowerValue.round()} - ${_upperValue.round()} km', style: TextStyle(fontSize: 13),),],
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 4.0,right: 16),
                child: Container(
                  width: 400,
                  child: RangeSlider(
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
                    onChangeStart: (RangeValues startValues) {},
                    onChangeEnd: (RangeValues endValues) {},
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: Text("Sort by", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 7.0,right: 16),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTextButton("Most Popular",0),
                    buildTextButton("Cost low to high", 1),
                    buildTextButton("Cost high to low", 2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
                child: Text("Price", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              SizedBox(height:15),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColoredButton("      ₹     "),
                    ColoredButton("     ₹₹     "),
                    ColoredButton("     ₹₹₹    "),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.center,
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
                  ), child: const Text("Apply Filter",style: TextStyle(color: Colors.white,fontSize: 16),)),
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class ColoredButton extends StatefulWidget {
  final String text;

  ColoredButton(this.text);

  @override
  _ColoredButtonState createState() => _ColoredButtonState();
}
class _ColoredButtonState extends State<ColoredButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      style: OutlinedButton.styleFrom(

        primary: isClicked ? Colors.red : Colors.black,
        backgroundColor: isClicked ? Colors.red : Colors.white,
          side: BorderSide(color: isClicked ? Colors.red : Colors.black),

      ),
      child: Text(widget.text, style: TextStyle(color: isClicked ? Colors.white : Colors.black,),),);
  }
}

Widget buildOutlinedButton(String text, bool isSelected) {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      primary: isSelected ? Colors.white : Colors.black,
      backgroundColor: isSelected ? Colors.red : Colors.white,
      side: BorderSide(color: Colors.black), // Always use black border
    ),
    child: Text(
      text,
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
      ),
    ),
  );
}

