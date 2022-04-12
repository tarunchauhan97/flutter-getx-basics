import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:flutter_getx/configuration.dart';
import 'package:flutter_getx/root.dart';
import 'package:flutter_getx/rounded_elevated_button.dart';
import 'package:flutter_getx/rounded_text_formfield.dart';
import 'package:flutter_getx/text_with_textbutton.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Image.asset(
                      "assets/signup_pic.png",
                      width: 300.0,
                    ),
                  ),
                  RoundedTextFormField(
                      controller: _nameController,
                      hintText: 'Name',
                      validator: (value) {
                        if (value.toString().length <= 2) {
                          return 'Enter valid name';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  RoundedTextFormField(
                    controller: _emailController,
                    hintText: 'Email',
                    validator: (value) {
                      bool _isEmailValid = RegExp(regExpression).hasMatch(value!);
                      if (!_isEmailValid) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RoundedTextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    hintText: 'Password',
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return 'Password should be longer or equal to 6 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RoundedTextFormField(
                    obscureText: true,
                    hintText: 'Confirm Password',
                    validator: (value) {
                      if (value.trim() != _passwordController.text.trim()) {
                        return 'Password does not match!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RoundedElevatedButton(
                      title: 'Sign Up',
                      padding: EdgeInsets.symmetric(
                        horizontal: Configuration.screenWidth! * 0.3,
                        vertical: Configuration.screenHeight! * 0.02,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          String name = _nameController.text.trim();
                          String email = _emailController.text.trim();
                          String password = _passwordController.text;
                          _authController.signUpUsingFirebaseAuth(name, email, password);
                        }
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextWithTextButton(
                    text: 'Already have an account?',
                    textButtonText: 'Sign in',
                    onPressed: () => Get.offAll(() => Root()),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
