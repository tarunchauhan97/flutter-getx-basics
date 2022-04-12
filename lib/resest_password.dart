import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:flutter_getx/configuration.dart';
import 'package:flutter_getx/rounded_elevated_button.dart';
import 'package:flutter_getx/rounded_text_formfield.dart';

import 'auth_controller.dart';
import 'main.dart';

class ResetPassword extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  final _authController = Get.find<AuthController>();

  ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Configuration.screenWidth! * 0.04),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () => Get.back(),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'If you want to recover your account, then please provide your email ID below..',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: Configuration.screenHeight! * 0.05),
                  Image.asset(
                    "assets/forgetpass.png",
                    width: 350.0,
                  ),
                  SizedBox(height: Configuration.screenHeight! * 0.05),
                  RoundedTextFormField(
                    controller: _emailController,
                    hintText: 'Email',
                    validator: (value) {
                      bool _isEmailValid = RegExp(//regular Expression
                          regExpression).hasMatch(value!);
                      if (!_isEmailValid) {
                        return 'Invalid email.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: Configuration.screenHeight! * 0.05),
                  RoundedElevatedButton(
                    title: 'Send Link',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _authController.resetPassword(_emailController.text.trim());
                      }
                    },
                    padding: EdgeInsets.symmetric(
                        horizontal: Configuration.screenHeight! * 0.08,
                        vertical: Configuration.screenHeight! * 0.01),
                  ),
                  SizedBox(height: Configuration.screenHeight! * 0.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
