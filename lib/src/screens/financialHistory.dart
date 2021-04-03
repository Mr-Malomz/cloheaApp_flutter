import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:cloheaApp_flutter/src/widgets/buttons.dart';
import 'package:cloheaApp_flutter/src/widgets/commons.dart';
import 'package:flutter/material.dart';

class FinancialHistory extends StatelessWidget {
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
                    HeaderMini(title: 'Financial History', color: medical),
                    VerSpacer(size: 30.0),
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
                        HonSpacer(size: 115.0),
                        Text(
                          'AMOUNT',
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
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffF9F9F9),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffE1E3E3),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffF9F9F9),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffE1E3E3),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffF9F9F9),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffE1E3E3),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffF9F9F9),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffE1E3E3),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffF9F9F9),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffE1E3E3),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffF9F9F9),
                        ),
                        TableRowWithLink(
                          title: 'Malaria & Typhod',
                          date: '20-01-2012',
                          isLink: false,
                          amount: '₦ 5,000',
                          bgColor: Color(0xffE1E3E3),
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
