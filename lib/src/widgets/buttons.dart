import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OutlineBtn extends StatelessWidget {
  final String text;
  final Function routeChange;
  OutlineBtn({@required this.text, this.routeChange});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 36.0,
      minWidth: 136.0,
      child: OutlinedButton(
        onPressed: () {
          routeChange();
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6.0),
              topLeft: Radius.circular(6.0),
              topRight: Radius.circular(6.0),
            ),
          ),
          side: BorderSide(width: 2, color: primary),
          minimumSize: Size(162.0, 36.0),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, color: primary),
        ),
      ),
    );
  }
}

class FillBtn extends StatelessWidget {
  final String text;
  final Function routeChange;
  FillBtn({@required this.text, this.routeChange});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          routeChange();
        },
        style: TextButton.styleFrom(
          backgroundColor: primary,
          minimumSize: Size(162.0, 36.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6.0),
              topLeft: Radius.circular(6.0),
              topRight: Radius.circular(6.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, color: white),
        ));
  }
}

class LongFillBtn extends StatelessWidget {
  final String text;
  final Function funcCall;
  final Color color;
  LongFillBtn({@required this.text, this.funcCall, this.color: primary});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          funcCall();
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(MediaQuery.of(context).size.width, 36.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6.0),
              topLeft: Radius.circular(6.0),
              topRight: Radius.circular(6.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, color: white),
        ));
  }
}

class ArrowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        alignment: Alignment.centerLeft,
        icon: Icon(
          Icons.arrow_back,
          color: black,
          size: 24.0,
        ),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}

class AppointmentBtn extends StatelessWidget {
  final Function onClick;
  AppointmentBtn({this.onClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 101.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color(0xff207FD8),
              Color(0xff55799A),
            ],
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    color: white,
                    size: 24,
                  ),
                  HonSpacer(size: 15.0),
                  Text(
                    'Appointment',
                    style: TextStyle(
                      color: white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '9',
                    style: TextStyle(
                      color: white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MedicalBtn extends StatelessWidget {
  final Function onClick;
  MedicalBtn({this.onClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 101.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: medical,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.history,
                        color: white,
                        size: 24,
                      ),
                      HonSpacer(size: 15.0),
                      Text(
                        'Medical History',
                        style: TextStyle(
                          color: white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40.0,
            right: 15.0,
            child: SvgPicture.asset(
              'assets/svg/medical.svg',
              semanticsLabel: 'medical svg',
            ),
          )
        ],
      ),
    );
  }
}

class FindDoctorBtn extends StatelessWidget {
  final Function onClick;
  FindDoctorBtn({this.onClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 101.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Color(0xff1F0977),
                  Color(0xff55468F),
                ],
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person_add_rounded,
                        color: white,
                        size: 24,
                      ),
                      HonSpacer(size: 15.0),
                      Text(
                        'Find a Doctor',
                        style: TextStyle(
                          color: white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40.0,
            right: 29.0,
            child: SvgPicture.asset(
              'assets/svg/doctor.svg',
              semanticsLabel: 'doctor svg',
            ),
          )
        ],
      ),
    );
  }
}

class FinanacialHistBtn extends StatelessWidget {
  final Function onClick;
  FinanacialHistBtn({this.onClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 101.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: finance,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/financeIcon.svg',
                    semanticsLabel: 'financial svg',
                  ),
                  HonSpacer(size: 15.0),
                  Text(
                    'Financial History',
                    style: TextStyle(
                      color: white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'December Total',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '₦ 30,000',
                    style: TextStyle(
                      color: white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmergencyBtn extends StatelessWidget {
  final Function onClick;
  EmergencyBtn({this.onClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 101.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: emergency,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.add_box,
                    color: white,
                  ),
                  HonSpacer(size: 15.0),
                  Text(
                    'Emergency',
                    style: TextStyle(
                      color: white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: white,
                  ),
                  VerSpacer(size: 10.0),
                  Text(
                    '08056784567',
                    style: TextStyle(
                      color: white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
