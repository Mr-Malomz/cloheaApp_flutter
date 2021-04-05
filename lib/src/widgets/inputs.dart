import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFormField extends StatelessWidget {
  final bool isEmail;
  final bool isPassword;
  final bool isPhoneNum;
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

class InputTextAreaField extends StatelessWidget {
  final String title;
  final String hinText;

  InputTextAreaField({@required this.title, this.hinText});

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
        Container(
          height: 120.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your $title';
                }
                return null;
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
            ),
          ),
        )
      ],
    );
  }
}

class DateCustomPicker extends StatefulWidget {
  final String title;
  final Function datePicker;

  DateCustomPicker({@required this.title, this.datePicker});

  @override
  _DateCustomPickerState createState() => _DateCustomPickerState();
}

class _DateCustomPickerState extends State<DateCustomPicker> {
  DateTime selectedDate;

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            widget.title,
            style: TextStyle(
              color: black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: dark),
            ),
          ),
          child: ListTile(
            onTap: () {
              _selectDate(context);
            },
            leading: Icon(
              Icons.calendar_today_rounded,
              color: dark,
            ),
            title: Align(
                child: Text(
              selectedDate != null
                  ? "${selectedDate.toLocal()}".split(' ')[0]
                  : '',
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.w400,
              ),
            )),
            trailing: Icon(
              Icons.arrow_drop_down,
              color: dark,
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownCustom extends StatefulWidget {
  final String title;
  final List<Map<String, dynamic>> list;

  DropDownCustom({@required this.title, @required this.list});

  @override
  _DropDownCustomState createState() => _DropDownCustomState();
}

class _DropDownCustomState extends State<DropDownCustom> {
  String dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            widget.title,
            style: TextStyle(
              color: black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        DropdownButtonFormField(
          value: dropDownValue,
          items: widget.list
              .map<DropdownMenuItem<String>>(
                (Map<String, dynamic> selected) => DropdownMenuItem(
                  child: Text(selected['name']),
                  value: selected['id'],
                ),
              )
              .toList(),
          onChanged: (String value) {
            setState(() {
              dropDownValue = value;
            });
          },
          isExpanded: true,
          icon: Icon(
            Icons.arrow_drop_down,
            color: dark,
          ),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: dark, width: 1.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: primary, width: 2.0),
            ),
            contentPadding: EdgeInsets.only(right: 16.0),
          ),
        ),
      ],
    );
  }
}
