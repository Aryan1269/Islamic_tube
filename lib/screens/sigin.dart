import 'package:flutter/material.dart';
import 'package:islamic_tube/screens/CustomAppBar.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _MyLoginState();
}

class _MyLoginState extends State<signin> {
  
  final _formKey=GlobalKey<FormState>();  //added
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 40, 20),
              child: Center(
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(color: Colors.grey, blurRadius: 5)]),
                ),
              ),
            ),
            // const SizedBox(
            //           height: 20,
            //         ),
            Form(
                  key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child:  TextFormField(
                      keyboardType: TextInputType.number,
                     validator: (value) {
                              if (value!.isEmpty){
                                return "Please Enter Mobile Number";
                              }else if(value.length<10) {
                                return "number should contain only 10 digit";
                              }
                              else if(value.length>10) {
                                return "number should contain only 10 digit";
                              }
                              else{
                                return null;
                              }
                            },
                      decoration: InputDecoration(
                          hintText: "Enter Number",
                          labelText: "Enter Your Mobile Number",
                          hintStyle: TextStyle(color: Colors.green),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: SizedBox(
                    height: 55,
                    width: 120,
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
                SizedBox(
                  width: 130,
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

            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 10, 40, 5),
              child: SizedBox(
                width: 200,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                     if(_formKey.currentState!.validate()){
                    Navigator.pushNamed(context, "/home");
                     }else{
                            
                          }
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 66, 179, 70)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //  SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 20, 5),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      " Don't have account? sign up ",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                     Navigator.pushNamed(context, "/register");
                    },
                    child: Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
