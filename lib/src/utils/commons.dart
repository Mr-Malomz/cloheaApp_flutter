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
