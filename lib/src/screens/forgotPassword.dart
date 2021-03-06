import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:cloheaApp_flutter/src/widgets/inputs.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  //global identifier for forms
  final _formKey = GlobalKey<FormState>();

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
                    HeaderMain(text: 'Forgot Password'),
                    VerSpacer(size: 10.0),
                    Text(
                      'Enter your email address to reset your password',
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    VerSpacer(size: 30.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          InputFormField(
                            title: 'Email',
                            hinText: 'me@yahoo.com',
                            isEmail: true,
                          ),
                          VerSpacer(size: 30.0),
                          LongFillBtn(
                            text: 'SUBMIT',
                            funcCall: () {
                              if (_formKey.currentState.validate()) {}
                            },
                          ),
                        ],
                      ),
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
