import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFormField extends StatelessWidget {
  bool isEmail;
  bool isPassword;
  bool isPhoneNum;
  final String title;
  final String hinText;

  InputFormField({
    @required this.title,
    this.hinText,
    this.isEmail: false,
    this.isPassword: false,
    this.isPhoneNum: false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.w500,
              ),
            )),
        TextFormField(
          validator: (value) {
            if (isEmail) {
              return EmailValidator.validate(value)
                  ? null
                  : "Please enter a valid email";
            } else if (isPassword) {
              return value.length < 6
                  ? 'Password must be greater than 6 characters'
                  : null;
            } else {
              if (value.isEmpty) {
                return 'Please enter your $title';
              }
              return null;
            }
          },
          decoration: InputDecoration(
            hintText: hinText,
            hintStyle: TextStyle(
              color: Color(0xff4F4F4F),
              fontSize: 14.0,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: dark, width: 1.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: primary, width: 2.0),
            ),
            contentPadding: EdgeInsets.only(left: 16.0),
          ),
          obscureText: isPassword,
          inputFormatters:
              isPhoneNum ? [FilteringTextInputFormatter.digitsOnly] : null,
        )
      ],
    );
  }
}
