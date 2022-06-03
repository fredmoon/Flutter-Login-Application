import 'package:flutter/material.dart';
import 'comHelper.dart';

class getTextFormField extends StatelessWidget {

  TextEditingController controller;
  String hintName;
  IconData icon;
  bool isObscureText;
  TextInputType inputType;


  getTextFormField(
      {
        required this.controller, required this.hintName, required this.icon , this.isObscureText = false,this.inputType = TextInputType.text}
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      margin: EdgeInsets.only(top: 10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isObscureText,
        keyboardType: inputType,
        validator: (value) {

          if (value == null || value.isEmpty) {
            return 'لطفا $hintName وارد نمایید';
          }
          if(hintName == "Email" && !validateEmail(value)){
            return 'لطفا ایمیل معتبر وارد نمایید';
          }
          return null;
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10,20,10,20),
            enabledBorder: OutlineInputBorder(

              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),

            prefixIcon: Icon(icon),
            hintText: hintName,
            fillColor: Colors.grey[300],
            filled: true,
            hintStyle: TextStyle(
                fontFamily: "Vazir"
            )

        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
