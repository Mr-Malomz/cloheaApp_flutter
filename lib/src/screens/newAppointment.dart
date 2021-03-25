import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:cloheaApp_flutter/src/widgets/inputs.dart';
import 'package:flutter/material.dart';

class NewAppointment extends StatefulWidget {
  @override
  _NewAppointmentState createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
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
                    HeaderMini(title: 'New Appointment', color: primary),
                    VerSpacer(size: 60.0),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          DateCustomPicker(title: 'Preffered Date'),
                          VerSpacer(size: 40.0),
                          DropDownCustom(
                            title: 'Select From Favourite Doctor',
                            list: [
                              {'id': '001', 'name': 'Dr Lola'},
                              {'id': '002', 'name': 'Dr Ahmed'},
                              {'id': '003', 'name': 'Dr Shwan'},
                              {'id': '004', 'name': 'Dr Vincent'},
                            ],
                          ),
                          VerSpacer(size: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'No Favourite yet?',
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              HonSpacer(size: 10.0),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Find a doctor',
                                  style: TextStyle(
                                    color: primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          VerSpacer(size: 30.0),
                          InputFormField(title: 'Title of Appointment'),
                          VerSpacer(size: 30.0),
                          InputTextAreaField(title: 'Other Details'),
                          VerSpacer(size: 30.0),
                          LongFillBtn(
                            text: 'SCHEDULE APPOINTMENT',
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
