import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:cloheaApp_flutter/src/widgets/inputs.dart';
import 'package:flutter/material.dart';

class EmergencyContact extends StatefulWidget {
  @override
  _EmergencyContactState createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
  //global identifier for forms
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              ArrowButton(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderMini(title: 'Emergency Contact', color: primary),
                    VerSpacer(size: 30.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          InputFormField(
                            title: 'Phone Number',
                            hinText: 'enter your phone number',
                            isPhoneNum: true,
                          ),
                          VerSpacer(size: 30.0),
                          LongFillBtn(
                            text: 'SAVE CONTACT',
                            funcCall: () {
                              if (_formKey.currentState.validate()) {}
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
