import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPPage extends StatefulWidget {
  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  String otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ArrowButton(),
                    VerSpacer(size: 60.0),
                    Center(
                      child: SvgPicture.asset('assets/svg/otp.svg',
                          semanticsLabel: 'otp illustration'),
                    ),
                    VerSpacer(size: 60.0),
                    Text(
                      'Enter the verification code  you just received on your email',
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    VerSpacer(size: 60.0),
                    Center(
                      child: OTPTextField(
                        length: 4,
                        keyboardType: TextInputType.number,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 50,
                        fieldStyle: FieldStyle.underline,
                        style: TextStyle(fontSize: 17),
                        onChanged: (pin) {
                          print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          setState(() {
                            otp = pin;
                          });
                        },
                      ),
                    ),
                    VerSpacer(size: 60.0),
                    LongFillBtn(
                      text: 'SUBMIT',
                      funcCall: () {
                        print(otp);
                      },
                    ),
                    VerSpacer(size: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Didn’t get any code?',
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        HonSpacer(size: 10.0),
                        InkWell(
                          onTap: () {
                            // print(otp);
                          },
                          child: Text(
                            'Resend',
                            style: TextStyle(
                              color: primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
