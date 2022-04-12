import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/auth_controller.dart';
import 'package:flutter_getx/configuration.dart';
import 'package:flutter_getx/rounded_elevated_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_authController) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/welcome.jpg"),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: ClipOval(
                      child: _authController.displayPhoto == ''
                          ? Image.asset(
                              "assets/avatar.jpg",
                              width: 160.0,
                              height: 160.0,
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              _authController.displayPhoto,
                              width: 160.0,
                              height: 160.0,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0, bottom: 40.0),
                    child: Text(
                      _authController.displayUserName.toString(),
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                  ),
                  RoundedElevatedButton(
                    title: 'Sign Out',
                    onPressed: () => _authController.signOutFromApp(),
                    padding: EdgeInsets.symmetric(horizontal: Configuration.screenWidth! * 0.2),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
