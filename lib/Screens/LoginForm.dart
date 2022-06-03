import 'package:flutter/material.dart';
import 'package:testingproject/Comm/genLoginSignupHeader.dart';
import 'package:testingproject/Comm/genTextFormField.dart';
import 'SignupForm.dart';



class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'صفحه ورود',
          style: TextStyle(
            fontFamily: "Vazir",
          ),

        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Container(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  genLoginSignupHeader(
                    'به صفحه ورود خوش آمدید'
                  ),
                  SizedBox(height: 150.0),
                  getTextFormField(
                      controller: _conUserId,
                      icon: Icons.person,
                      hintName: 'نام کاربری'),
                  SizedBox(height: 15.0),

                  getTextFormField(
                      controller: _conPassword,
                      icon: Icons.lock,
                      hintName: 'گذرواژه',
                  isObscureText: true,
                  ),

                  SizedBox(height: 20.0,),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    child: MaterialButton(
                      child: Text(
                        'ورود',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Vazir',
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                      },
                    ),
                      decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(onPressed: (){
                          
                          Navigator.push(context, MaterialPageRoute(builder: (_) => SignupForm() ));

                        },
                          textColor: Colors.blue,
                          child: Text('کلیک کنید',
                            style: TextStyle(

                              fontFamily: "Vazir",
                            ),
                          ),
                        ),
                        Text(
                          'آیا حساب کاربری ندارید؟',
                          style: TextStyle(
                            fontFamily: "Vazir",
                          ),

                        ),

                      ],
                    ),
                  ),

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}

