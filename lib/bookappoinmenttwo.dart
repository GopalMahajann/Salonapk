import 'package:flutter/material.dart';
import 'package:saloon/bookappoinnent.dart';
import 'package:saloon/mainone.dart';

class Bookappoinmenttwo extends StatefulWidget {
  const Bookappoinmenttwo({Key? key}) : super(key: key);

  @override
  State<Bookappoinmenttwo> createState() => _BookappoinmenttwoState();
}

class _BookappoinmenttwoState extends State<Bookappoinmenttwo> {
  String selectedValue = "Male";
  String selectedOption = 'Relexed Bob(#15)';
  List<String> options = ['Relexed Bob(#15)', 'Option 2', 'Option 3', 'Option 4'];
  final shape = StadiumBorder();

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
                image: AssetImage('assets/images/img_20.png'), // Replace with your image path
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Mainone()),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 22,),
                    Text("Book Appoinment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(height: 161,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                       color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(36),topRight: Radius.circular(36))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Text("Gender",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              value: 'Male',
                              activeColor: Colors.red,
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                            Text('Male'),
                            SizedBox(width: 40),
                            Radio(
                              value: 'Female',
                              activeColor: Colors.red,
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                            ),
                            Text('Female',),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Choose Your Service",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text(
                                "Total  ₹900",
                                style: TextStyle(fontSize: 13, color: Colors.red),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Haircut",style: TextStyle()),
                              Container(
                                height: 40,
                                width: 220,
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
                                              //  Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Spa",style: TextStyle()),
                              Container(
                                height: 40,
                                width: 220,
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
                                              //  Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Makeup",style: TextStyle()),
                              Container(
                                height: 40,
                                width: 220,
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
                                              //  Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Facial",style: TextStyle()),
                              Container(
                                height: 40,
                                width: 220,
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
                                              //  Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Haircolor",style: TextStyle()),
                              Container(
                                height: 40,
                                width: 220,
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
                                              //  Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Bridal",style: TextStyle()),
                              Container(
                                height: 40,
                                width: 220,
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
                                              //  Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Nail",style: TextStyle()),
                              Container(
                                height: 40,
                                width: 220,
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
                                              //  Icon(Icons.arrow_drop_down, color: Colors.grey), // Default dropdown icon
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
                        ),
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
                                      MaterialPageRoute(builder: (context)=>  const Bookappoiment()));
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
                      ],
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
}
