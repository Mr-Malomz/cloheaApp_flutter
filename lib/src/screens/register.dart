import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:cloheaApp_flutter/src/widgets/inputs.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    HeaderMain(text: 'Create Account'),
                    VerSpacer(size: 30.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          InputFormField(
                            title: 'Firstname',
                            hinText: 'enter your firstname',
                          ),
                          VerSpacer(size: 30.0),
                          InputFormField(
                            title: 'Surname',
                            hinText: 'enter your surname',
                          ),
                          VerSpacer(size: 30.0),
                          InputFormField(
                            title: 'Email',
                            hinText: 'me@yahoo.com',
                            isEmail: true,
                          ),
                          VerSpacer(size: 30.0),
                          InputFormField(
                            title: 'Phone Number',
                            hinText: 'enter your phone number',
                            isPhoneNum: true,
                          ),
                          VerSpacer(size: 30.0),
                          InputFormField(
                            title: 'Password',
                            hinText: 'enter password',
                            isPassword: true,
                          ),
                          VerSpacer(size: 30.0),
                          LongFillBtn(
                            text: 'REGISTER',
                            funcCall: () {
                              if (_formKey.currentState.validate()) {}
                            },
                          ),
                          VerSpacer(size: 30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              HonSpacer(size: 10.0),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text(
                                  'Login',
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
