import 'package:flutter/material.dart';
import 'package:islamic_tube/screens/CustomAppBar.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
                    child: Column(
                      children: [
                        const TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Name",
                              labelText: "Enter Your Name",
                              hintStyle: TextStyle(color: Colors.green),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                              )),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const TextField(
                          keyboardType: TextInputType.number,
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: SizedBox(
                          height: 55,
                          width: 130,
                          child: ElevatedButton(
                            onPressed: () {},
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
                      SizedBox(
                        width: 150,
                        height: 55,
                        child: TextField(
                          // scrollPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 33),
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
                    padding: EdgeInsets.fromLTRB(40, 40, 40, 5),
                    child: SizedBox(
                      width: 250,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
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
                                        Colors.blue)),
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
