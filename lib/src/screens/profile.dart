import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:cloheaApp_flutter/src/widgets/inputs.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ArrowButton(),
                    VerSpacer(size: 60.0),
                    HeaderMini(title: 'Edit Profile', color: primary),
                    VerSpacer(size: 30.0),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 72.0,
                              width: 72.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              child: Icon(
                                Icons.person,
                                color: white,
                                size: 34.0,
                              ),
                            ),
                            HonSpacer(size: 15.0),
                            Text(
                              'Tap to change',
                              style: TextStyle(
                                color: black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
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
                              LongFillBtn(
                                text: 'UPDATE PROFILE',
                                funcCall: () {
                                  if (_formKey.currentState.validate()) {}
                                },
                              ),
                            ],
                          ),
                        )
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
