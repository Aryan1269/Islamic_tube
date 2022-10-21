import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:islamic_tube/screens/CustomAppBar.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final _formKey = GlobalKey<FormState>(); //added

  bool loading = false;
  final auth = FirebaseAuth.instance;
  final auth2 = FirebaseAuth.instance;
  final phoneNumberController = TextEditingController();
  final phoneNumberControllerotp = TextEditingController();
  late final String verification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: const Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          shadows: [Shadow(color: Colors.grey, blurRadius: 5)]),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 33),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Name";
                              } else if (value.length < 3) {
                                return "Name is too short";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: "Name",
                              labelText: "Enter Your Name",
                              hintStyle: TextStyle(color: Colors.green),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              ),
                            ),
                          ),

                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),

//mobile no firebase

                          TextFormField(
                            controller: phoneNumberController,
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Mobile Number";
                              } else if (value.length < 10) {
                                return "number should contain only 10 digit";
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                hintText: "Mobile Number",
                                hintStyle: TextStyle(color: Colors.green),
                                labelText: "Mobile Number",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                    // Color:Colors.green,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 38),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: ElevatedButton(
                            onPressed: () {
                              auth.verifyPhoneNumber(
                                  phoneNumber:
                                      "+91${phoneNumberController.text}",
                                  verificationCompleted: (_) {},
                                  verificationFailed: (e) {
                                    print(e);
                                    Fluttertoast.showToast(
                                        msg: "$e",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  codeSent:
                                      (String verificationId, int? token) {
                                    verification = verificationId;
                                  },
                                  codeAutoRetrievalTimeout: (e) {
                                    print(e);

                                    Fluttertoast.showToast(
                                        msg: "$e",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  });
                            },
                            child: Text(
                              "Send OTP",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 66, 179, 70)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //otp
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: TextField(
                          controller: phoneNumberControllerotp,
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "OTP",
                              hintStyle: TextStyle(color: Colors.green),
                              labelText: "Enter OTP",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                  // Color:Colors.green,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 1,
                      child: ElevatedButton(
                        onPressed: () async {
                          final credential = PhoneAuthProvider.credential(
                              verificationId: verification,
                              smsCode:
                                  phoneNumberControllerotp.text.toString());

                          try {
                            await auth2.signInWithCredential(credential);
                            Navigator.pushReplacementNamed(context, "/home");
                          } catch (e) {
                            Fluttertoast.showToast(
                                msg: "error${e}",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 5,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }

                          // if (_formKey.currentState!.validate()) {
                          //   Navigator.pushReplacementNamed(context, "/home");
                          // } else {}
                        },
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 66, 179, 70)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 95),
                        ),
                        Center(
                          child: const Text(
                            "Already Have Account?",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green)),
                            onPressed: () {
                              Navigator.pushNamed(context, "/sign");
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
