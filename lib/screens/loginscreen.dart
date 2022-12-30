import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/otp.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

import 'navbar.dart';

final countrycode = "+91";

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MyConfig _myconfig = MyConfig();

  TextEditingController cellphoneControler = TextEditingController();

  String devicetokenid = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/signinbg.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyInputField(
                    keyboardtype: TextInputType.number,
                    myicon: Icon(Icons.phone),
                    mycontroller: cellphoneControler,
                    hidedata: false,
                    hinttext: "Enter phone"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                    btnwidth: size.width * 0.851,
                    btntextsize: 15,
                    buttontext: 'SEND OTP',
                    textcolor: Colors.black,
                    onTap: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => otpscreen()),
                  );
                    },
                    bgcolor: Colors.amber)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                    btnwidth: size.width * 0.851,
                    btntextsize: 15,
                    buttontext: 'CONTINUE WITHOUT LOGIN',
                    textcolor: Colors.black,
                    onTap: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                    },
                    bgcolor: Colors.amber)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TermCondition(),
            SizedBox(height: 20,),
           
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
