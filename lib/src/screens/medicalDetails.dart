import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';

class MedicalDetails extends StatelessWidget {
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
                    HeaderMini(title: 'Medical Details', color: medical),
                    VerSpacer(size: 30.0),
                    Container(
                      height: 35.0,
                      decoration: BoxDecoration(
                        color: medical,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Malaria & Typhoid',
                              style: TextStyle(
                                color: white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '20 - O1 - 2012',
                              style: TextStyle(
                                color: white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: medical, width: 1.0),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TitleText(title: 'Attending Doctor'),
                                    VerSpacer(size: 10.0),
                                    MainText(title: 'DR. Orimolade Joseph'),
                                    VerSpacer(size: 5.0),
                                    MiniText(title: 'PHD, MBBS - Cardiologist')
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TitleText(title: 'Treatment Duration'),
                                    VerSpacer(size: 10.0),
                                    MainText(title: '2 Weeks'),
                                  ],
                                ),
                              ],
                            ),
                            VerSpacer(size: 30.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TitleText(title: 'Prescription'),
                                    VerSpacer(size: 10.0),
                                    DrugText(title: '250mg Amoxilin'),
                                    VerSpacer(size: 15.0),
                                    DrugText(title: '500mg sulfamethoxazole'),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TitleText(title: 'Dosage'),
                                    VerSpacer(size: 10.0),
                                    MainText(title: '1 - 1 - 1'),
                                    VerSpacer(size: 15.0),
                                    MainText(title: '2 - 2'),
                                  ],
                                ),
                              ],
                            ),
                            VerSpacer(size: 30.0),
                            TitleText(title: 'Doctor’s Comment'),
                            VerSpacer(size: 10.0),
                            Container(
                              child: Text(
                                  'Patient exhibit signs of fever high fever, headache, stomach pain and either constipation or diarrhoea. Syptoms of headache, muscle weakness, rash with small red dots, skin rash, or weight loss'),
                            ),
                            VerSpacer(size: 30.0),
                            TitleText(title: 'Follow-Up Checkup'),
                            VerSpacer(size: 10.0),
                            MainText(title: 'None')
                          ],
                        ),
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

class TitleText extends StatelessWidget {
  final String title;
  TitleText({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: dark,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class MainText extends StatelessWidget {
  final String title;
  MainText({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: black,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class MiniText extends StatelessWidget {
  final String title;
  MiniText({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: dark,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class DrugText extends StatelessWidget {
  final String title;
  DrugText({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 7.0,
          width: 7.0,
          decoration: BoxDecoration(
              color: medical, borderRadius: BorderRadius.circular(7.0)),
        ),
        HonSpacer(size: 10.0),
        MainText(title: title)
      ],
    );
  }
}
