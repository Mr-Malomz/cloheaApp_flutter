import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloheaApp_flutter/src/widgets/inputs.dart';

class MedicalHistory extends StatefulWidget {
  @override
  _MedicalHistoryState createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {
  //global identifier for forms
  final _formKey = GlobalKey<FormState>();
  bool isForm = false;

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
                    HeaderMini(title: 'Medical History', color: medical),
                    VerSpacer(size: 30.0),
                    FractionallySizedBox(
                      widthFactor: 0.5,
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            isForm = !isForm;
                          });
                        },
                        color: medical,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(6.0),
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              isForm ? Icons.remove : Icons.add,
                              color: white,
                            ),
                            Text(
                              'FILTER LIST',
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    VerSpacer(size: 30.0),
                    isForm
                        ? Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                DateCustomPicker(title: 'Start Date'),
                                VerSpacer(size: 40.0),
                                DateCustomPicker(title: 'End Date'),
                                VerSpacer(size: 15.0),
                                VerSpacer(size: 30.0),
                                LongFillBtn(
                                  text: 'APPLY FILTER',
                                  color: medical,
                                  funcCall: () {
                                    if (_formKey.currentState.validate()) {}
                                  },
                                ),
                                VerSpacer(size: 30.0),
                              ],
                            ),
                          )
                        : Container(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'DESCRIPTION',
                          style: TextStyle(
                            color: dark,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                        ),
                        HonSpacer(size: 70.0),
                        Text(
                          'DATE',
                          style: TextStyle(
                            color: dark,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          '',
                          style: TextStyle(
                            color: dark,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    VerSpacer(size: 10.0),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffE3F2F4),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          route: 'medicalDetails',
                          bgColor: Color(0xffCFE0E2),
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
