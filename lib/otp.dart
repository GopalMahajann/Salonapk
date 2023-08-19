import 'package:flutter/material.dart';
import 'dart:async';
import 'package:saloon/forget.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());

  @override
  void dispose() {
    _focusNodes.forEach((node) => node.dispose());
    super.dispose();
  }

  bool isCodeVerified = false;
  int timerSeconds = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (timerSeconds == 0) {
          _timer?.cancel();
        } else {
          timerSeconds--;
        }
      });
    });
  }

  TextEditingController otpController = TextEditingController();
  List<String> enteredDigits = List.generate(6, (_) => '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Container(
            height: 30,
            padding: const EdgeInsets.only(left: 24),
            child: Image.asset("assets/images/signuparrow.png"),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Forgot()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "Phone Verification",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 11),
            Text(
              "Enter your OTP code here",
              style: TextStyle(color: Colors.black, fontSize: 13),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(6, (index) =>
                  Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  width: 44,
                  height: 41,
                  decoration: BoxDecoration(
                   shape: BoxShape.circle,
                    color: enteredDigits[index].isEmpty ? Color(0xffF0F0F0) : Colors.red,

                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        focusNode: _focusNodes[index],
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            if (index < 5) {
                              FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                            } else {
                              _focusNodes[index].unfocus();
                            }
                            setState(() {
                              enteredDigits[index] = value.substring(0, 1);
                            });
                          } else {
                            if (index > 0) {
                              FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
                              setState(() {
                                enteredDigits[index] = '';
                              });
                            } else {
                              setState(() {
                                enteredDigits[index] = '';
                              });
                            }

                          }
                        },
                        decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 20,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text("Time Remaining: $timerSeconds seconds",
                style: TextStyle(fontSize: 12)),
            SizedBox(height: 30),
            Text(
              "Didn't you receive any code?",
              style: TextStyle(color: Color(0xff666666), fontSize: 14),
            ),
            InkWell(
              //onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot()),);},
              child: Text(
                "Resend a new code",
                style: TextStyle(
                    color: Color(0xffFE9654),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            // Display the timer
          ],
        ),
      ),
    );
  }

  void verifyOTP(String otp) {
    if (otp == '123456') {
      setState(() {
        isCodeVerified = true;
        _timer?.cancel();
      });
    } else {
      // Handle incorrect OTP
    }
  }
}
