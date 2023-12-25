import 'package:assignment/features/Login/Screens/phone.dart';
import 'package:assignment/features/Login/Services/verify_service.dart';
import 'package:assignment/widgets/BottomNavigation/bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';


class VerifyScreen extends StatefulWidget {
  final String number;
  const VerifyScreen({Key? key, required this.number}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final VerifyService verifyService = VerifyService();
  String otp = "";

  void signInUser(String otp) {
    verifyService.signInUser(context: context, number: widget.number, otp: otp);
  }

  void onCompleted(String pin){
    otp = pin;
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const LoginScreen()),
                    ModalRoute.withName(
                        '/') // Replace this with your root screen's route name (usually '/')
                    );
              },
              child: const Row(
                children: [
                  Text(
                    "Edit Phone Number ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(
                    Icons.edit,
                    size: 20,
                  )
                ],
              ))
        ],
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(
                  text: 'OTP sent to +91 ',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: widget.number,
                        style: const TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter OTP to confirm your phone",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 30,
              ),
              Pinput(
                  length: 4,
                  showCursor: true,
                  onCompleted: (pin) {
                    signInUser(pin);
                  }),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                    
                      Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const BottomBar()));
                    },
                    child: const Text(
                      "Verify Phone Number",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
