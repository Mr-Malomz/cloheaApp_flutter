import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:flutter/material.dart';

class HonSpacer extends StatelessWidget {
  final double size;
  HonSpacer({@required this.size});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}

class VerSpacer extends StatelessWidget {
  final double size;
  VerSpacer({@required this.size});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}

class HeaderMain extends StatelessWidget {
  final String text;
  HeaderMain({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: primary,
        fontWeight: FontWeight.w800,
        fontSize: 24.0,
      ),
    );
  }
}

class AppointDivider extends StatelessWidget {
  final String title;
  Function ontap;
  Color color;

  AppointDivider({@required this.title, this.ontap, @required this.color});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 13.0,
              height: 13.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: color,
                  width: 3.0,
                ),
              ),
            ),
            HonSpacer(size: 15.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            )
          ],
        ),
        InkWell(
          onTap: ontap,
          child: Text(
            'VIEW ALL',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class AppointFeeds extends StatelessWidget {
  final String title;
  final String address;
  final String time;
  Color bgColor;
  Color iconColor;
  bool hasTime;
  IconData icon;
  Color timeColor;

  AppointFeeds({
    @required this.title,
    @required this.address,
    this.time,
    @required this.bgColor,
    this.hasTime = true,
    this.iconColor,
    @required this.icon,
    this.timeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: black,
                      fontSize: 14.0),
                ),
                Text(
                  address,
                  style: TextStyle(
                    color: black,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  size: 24.0,
                  color: iconColor,
                ),
                hasTime
                    ? Text(
                        time,
                        style: TextStyle(
                          color: timeColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
