import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Contact extends StatelessWidget {
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
                    HeaderMini(title: 'Contact Us', color: primary),
                    VerSpacer(size: 30.0),
                    Center(
                      child: Text(
                        'You can reach us via any of our details below',
                        style: TextStyle(
                          color: black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        VerSpacer(size: 30.0),
                        CopyWidget(
                          title: 'Phone Number',
                          content: '08045678946',
                        ),
                        VerSpacer(size: 30.0),
                        CopyWidget(
                          title: 'Email',
                          content: 'hello@clohea.com',
                        ),
                        VerSpacer(size: 30.0),
                        AddressWidget(),
                        VerSpacer(size: 30.0),
                        SocialsWidget(
                          title: 'Connect on Facebook',
                          asset: 'assets/svg/facebook.svg',
                          color: Color(0xFF548FC7),
                        ),
                        VerSpacer(size: 30.0),
                        SocialsWidget(
                          title: 'Connect on Twitter',
                          asset: 'assets/svg/twitter.svg',
                          color: Color(0xFF55ACEE),
                        ),
                        VerSpacer(size: 30.0),
                        SocialsWidget(
                          title: 'Connect on Instagram',
                          asset: 'assets/svg/instagram.svg',
                          color: Color(0xFFDD2A7B),
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

class CopyWidget extends StatelessWidget {
  final String title;
  final String content;
  final Function onCopy;

  CopyWidget({@required this.title, @required this.content, this.onCopy});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        VerSpacer(size: 10.0),
        Container(
          height: 45.0,
          decoration: BoxDecoration(
            border: Border.all(color: primary, width: 1.0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  HonSpacer(size: 16.0),
                  Text(
                    content,
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  onCopy();
                },
                child: Text(
                  'Copy',
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: primary,
                  minimumSize: Size(80.0, 45.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(6.0),
                      topRight: Radius.circular(6.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class AddressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(color: primary, width: 1.0),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [HonSpacer(size: 16.0), Icon(Icons.home, size: 25.0)],
          ),
          HonSpacer(size: 15.0),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              'Block 34 Adisa Bashua Street, Sururele, Lagos State.',
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SocialsWidget extends StatelessWidget {
  final String title;
  final String asset;
  final Color color;

  SocialsWidget({
    @required this.title,
    @required this.asset,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              HonSpacer(size: 16.0),
              SvgPicture.asset(asset),
            ],
          ),
          HonSpacer(size: 15.0),
          Text(
            title,
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
