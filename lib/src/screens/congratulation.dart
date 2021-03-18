import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CongratulationPage extends StatefulWidget {
  @override
  _CongratulationPageState createState() => _CongratulationPageState();
}

class _CongratulationPageState extends State<CongratulationPage> {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderMain(text: 'Congratulations'),
                    VerSpacer(size: 60.0),
                    SvgPicture.asset('assets/svg/congratulation.svg',
                        semanticsLabel: 'congratulation'),
                    VerSpacer(size: 60.0),
                    Text(
                      'Password reset successful! Click on proceed to login with your new credential',
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    VerSpacer(size: 60.0),
                    LongFillBtn(
                      text: 'PROCEED',
                      funcCall: () {
                        Navigator.pushNamed(context, '/login');
                      },
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
