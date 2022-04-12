import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:flutter_getx/configuration.dart';
import 'package:flutter_getx/resest_password.dart';
import 'package:flutter_getx/rounded_elevated_button.dart';
import 'package:flutter_getx/rounded_text_formfield.dart';
import 'package:flutter_getx/signup.dart';
import 'package:flutter_getx/text_with_textbutton.dart';

import 'auth_controller.dart';
import 'main.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset("assets/login_pic.png"),
            ),
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
            const SizedBox(
              height: 20,
            ),
            RoundedTextFormField(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
              validator: (value) {
                if (value.toString().length < 6) {
                  return 'Password should be longer or equal to 6 characters.';
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Configuration.screenHeight! * 0.05),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.green),
                  ),
                  onPressed: () => Get.to(() => ResetPassword()),
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.grey),
                  ),
                ),
              ),
            ),
            RoundedElevatedButton(
                title: 'Login',
                padding: EdgeInsets.symmetric(
                  horizontal: Configuration.screenWidth! * 0.3,
                  vertical: Configuration.screenHeight! * 0.02,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String email = _emailController.text.trim();
                    String password = _passwordController.text;

                    _authController.signInUsingFirebaseAuth(email, password);
                  }
                }),
            SizedBox(
              height: Configuration.screenHeight! * 0.01,
            ),
            TextWithTextButton(
              text: 'Do not have an account?',
              textButtonText: 'Sign Up here',
              onPressed: () => Get.to(() => SignUp()),
            ),
            TextWithTextButton(
              text: '',
              textButtonText: 'Or',
              onPressed: () => print(""),
            ),
            SizedBox(
              height: Configuration.screenHeight! * 0.01,
            ),
            GestureDetector(
              onTap: () {
                _authController.signInUserWithGoogle();
              },
              child: Image.asset(
                "assets/signin_google.png",
                width: 200.0,
              ),
            ),
            SizedBox(
              height: Configuration.screenHeight! * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
