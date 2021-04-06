import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
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
                    HeaderMini(title: 'About Us', color: primary),
                    VerSpacer(size: 30.0),
                    Center(
                      child: Text(
                        'Clohea is a complete Hospital Information System that supports customization and continuous integration.',
                        style: TextStyle(
                          color: black,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        VerSpacer(size: 30.0),
                        SectionNav(title: 'FAQs'),
                        VerSpacer(size: 30.0),
                        SectionNav(title: 'Why Clohea?'),
                        VerSpacer(size: 30.0),
                        SectionNav(title: 'Rate & Review Clohea App'),
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

class SectionNav extends StatelessWidget {
  final String title;
  final Function onTap;

  SectionNav({@required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 31.0,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: dark,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
