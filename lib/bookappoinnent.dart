import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:saloon/bookappoinmenttwo.dart';
import 'package:saloon/payment.dart';

class Bookappoiment extends StatefulWidget {
  const Bookappoiment({Key? key}) : super(key: key);

  @override
  State<Bookappoiment> createState() => _BookappoinmenttwoState();
}

class _BookappoinmenttwoState extends State<Bookappoiment> {








  String selectedValue = "Male";
  String selectedOption = 'Relexed Bob(#15)';
  List<String> options = ['Relexed Bob(#15)', 'Option 2', 'Option 3', 'Option 4'];

  TextEditingController dateInput = TextEditingController();
  bool isDateSelected = false;

  @override
  void initState() {
    super.initState();
  }
  List<bool> isSelectedList = List.generate(16, (index) => false);
  final shape = StadiumBorder();

  List<String> itemLabels = [
     '9:30 AM', '10:00 AM', '10:30 AM', '11:00 AM', '11:30 AM',
     '12:00 PM', '12:30 PM', '1:00 PM', '1:30 PM', '2:00 PM',
     '2:30 PM', '3:00 PM', '3:30 PM', '4:00 PM', '5:00 PM', '6:00 PM',
  ];

  List<bool> containerClickedStates = [false, false, false, false];

  void _handleContainerClick(int index) {
    setState(() {
      for (int i = 0; i < containerClickedStates.length; i++) {
        containerClickedStates[i] = (i == index);
      }
    });
  }

  Widget buildContainer(int index, String imagePath, String name) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => _handleContainerClick(index),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: containerClickedStates[index] ? Colors.red : Colors.white,
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
                  child: Image.asset(imagePath),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 3),
        Text(name, style: TextStyle(fontSize: 11)),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            //height: MediaQuery., // Set a large height to cover the entire screen height
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_21.png'), // Replace with your image path
                fit: BoxFit.cover,
                alignment: Alignment.topCenter, // Align the image to the top center
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 50),
                child: Row(
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Bookappoinmenttwo()),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 22,),
                    Text("Book Appoinment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(height: 141,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(36),topRight: Radius.circular(36))
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      //color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(36), topRight: Radius.circular(36))),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Select Your date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 13),
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            height: 44,
                            child: TextFormField(
                              controller: dateInput,
                              decoration: InputDecoration(
                                hintText: isDateSelected ? "" : "Select Date",
                                hintStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                                contentPadding:
                                EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                                filled: true,
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
                            ),
                          ),
                          SizedBox(height: 30),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Select Specialist",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 13),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildContainer(0, 'assets/images/bookappBitmap.png', 'Benjohnson'),
                              SizedBox(width: 10),
                              buildContainer(1, 'assets/images/bookappBitmap3.png', 'Alice'),
                              SizedBox(width: 10),
                              buildContainer(2, 'assets/images/boolapp4Bitmap.png', 'Bob'),
                              SizedBox(width: 10),
                              buildContainer(3, 'assets/images/bookappBitmap3.png', 'Eve'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Available slot",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                          ),
                          //SizedBox(height: 13),
                          Container(
                            // padding: EdgeInsets.all(10.0),
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 10.0,
                                crossAxisSpacing: 10.0,
                                childAspectRatio: 2,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelectedList[index] = !isSelectedList[index];
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelectedList[index] ? Colors.red : Colors.transparent,
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: isSelectedList[index] ? Colors.red : Colors.grey, // Change border color based on selection
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        itemLabels[index],
                                        style: TextStyle(
                                          color: isSelectedList[index] ? Colors.white : Colors.grey, // Change text color based on selection
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: isSelectedList.length,
                              shrinkWrap: true, // Makes the grid take up only the necessary space
                              physics: NeverScrollableScrollPhysics(), // Disables scrolling
                            ),
                          ),
                          SizedBox(height: 15),
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
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context)=>  const Payment()));
                                  },style: ElevatedButton.styleFrom(
                                minimumSize: const Size(327, 44),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent,

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ), child: const Text("Continous",style: TextStyle(color: Colors.white,fontSize: 16),)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
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
class GridItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final String label;

  const GridItem({
    required this.isSelected,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.transparent,
          border: Border.all(color: isSelected ? Colors.red : Colors.grey),
          // border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,fontSize: 12
            ),
          ),
        ),
      ),
    );
  }
}