import 'package:cloheaApp_flutter/src/screens/login.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final List<String> imgList = [
    'assets/svg/slide1.svg',
    'assets/svg/slide2.svg'
  ];
  final List<String> caption = [
    'High quality health care at your\n fingertips.',
    'Health care not limited to any time or place. Book an appointment at your own convinence any time of the day,from whereever you are.'
  ];
  int index = 0;

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.jpg'),
                    VerSpacer(size: 60.0),
                    Container(
                      height: 188,
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return SvgPicture.asset(imgList[index],
                              semanticsLabel: 'Health Swiper 1');
                        },
                        itemCount: 2,
                        onIndexChanged: (value) {
                          setState(() {
                            this.index = value;
                          });
                        },
                      ),
                    ),
                    VerSpacer(size: 60.0),
                    Container(
                      height: 80.0,
                      child: Text(
                        caption[this.index],
                        maxLines: 10,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4.0,
                          width: 25.0,
                          color: this.index == 0 ? primary : gray,
                        ),
                        HonSpacer(size: 30.0),
                        Container(
                          height: 4.0,
                          width: 25.0,
                          color: this.index == 1 ? primary : gray,
                        ),
                      ],
                    ),
                    VerSpacer(size: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlineBtn(
                          text: 'LOGIN',
                          routeChange: () {
                            Navigator.pushNamed(
                              context,
                              '/login',
                            );
                          },
                        ),
                        HonSpacer(size: 20.0),
                        FillBtn(text: 'REGISTER')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
