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
