import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.segment,
                            color: black,
                            size: 24.0,
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          width: 34.0,
                          child: CircleAvatar(
                            radius: 34.0 / 2,
                            backgroundImage:
                                NetworkImage('https://via.placeholder.com/150'),
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: primary,
                                width: 3.0,
                              )),
                        ),
                      ],
                    ),
                    VerSpacer(size: 30.0),
                    Text(
                      'Hi, Esther',
                      style: TextStyle(
                        color: black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    VerSpacer(size: 30.0),
                    AppointmentBtn(onClick: () {
                      Navigator.pushNamed(context, '/manageAppointment');
                    }),
                    VerSpacer(size: 30.0),
                    MedicalBtn(onClick: () {}),
                    VerSpacer(size: 30.0),
                    FindDoctorBtn(onClick: () {}),
                    VerSpacer(size: 30.0),
                    FinanacialHistBtn(onClick: () {}),
                    VerSpacer(size: 30.0),
                    EmergencyBtn(onClick: () {}),
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
