import 'package:flutter/material.dart';
import 'package:testingproject/Comm/genLoginSignupHeader.dart';
import '../Comm/genTextFormField.dart';
import 'LoginForm.dart';
import 'package:testingproject/Comm/comHelper.dart';




class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = new GlobalKey<FormState>();


  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();

  SignUp(){
    final form = _formKey.currentState;

    if(form.validate()){
      alertDialog(context,"OK");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ایجاد حساب کاربری',
        style: TextStyle(
            fontFamily: "Vazir",
        ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  genLoginSignupHeader(
                    'به صفحه ایجاد حساب خوش آمدید'
                  ),
                  SizedBox(height: 20.0),

                  getTextFormField(
                      controller: _conUserId,
                      icon: Icons.person_outline,
                      hintName: 'شناسه کاربری'),

                  SizedBox(height: 15.0),

                  getTextFormField(
                    controller: _conUserName,
                    inputType: TextInputType.name,
                    icon: Icons.person,
                    hintName: 'نام کاربری',
                    isObscureText: true,
                  ),

                  SizedBox(height: 15.0),

                  getTextFormField(
                    controller: _conEmail,
                    icon: Icons.email,
                    inputType: TextInputType.emailAddress,
                    hintName: 'ایمیل',
                    isObscureText: true,
                  ),


                  SizedBox(height: 15.0),

                  getTextFormField(
                    controller: _conPassword,
                    icon: Icons.lock,
                    hintName: 'گذرواژه',
                    isObscureText: true,
                  ),

                  SizedBox(height: 15.0),

                  getTextFormField(
                    controller: _conCPassword,
                    icon: Icons.lock_outlined,
                    hintName: 'تایید گذرواژه',
                    isObscureText: true,
                  ),

                  SizedBox(height: 20,),
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
                      onPressed: (){

                      },
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),

                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(onPressed: (){

                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (_) => LoginForm()),
                                  (Route<dynamic> route) => false);
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
