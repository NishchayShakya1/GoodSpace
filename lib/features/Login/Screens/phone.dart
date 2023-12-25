import 'package:assignment/features/Login/Services/otp_service.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countryController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  final OTPService otpService = OTPService();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    countryController.dispose();
    numberController.dispose();
  }

  void signInUser() {
    otpService.signInUser(
      context: context,
      number: numberController.text,
      countryCode: countryController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img1.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 25,
              ),
             
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Please enter your phone number to sign in ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'GoodSpace',
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(text: ' Account'),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      controller: numberController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone",
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: const TextSpan(
                    text: 'You will recieve a ',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: '4 digit OTP',
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ),
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
                    onPressed: () {
                      if (countryController.text.isNotEmpty &&
                          numberController.text.isNotEmpty) {
                        signInUser();
                      }
                    },
                    child: const Text(
                      "Get OTP",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
