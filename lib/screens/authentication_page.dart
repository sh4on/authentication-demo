import 'package:auth_demo/controllers/auth_controller.dart';
import 'package:auth_demo/screens/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class AuthenticationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(4),
        child: Form(
          child: Column(
            key: _formKey,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 4,
            children: [
              TextFormField(
                controller: controller.loginEmailEditingController,
                decoration: InputDecoration(
                  label: Text('Email'),
                  hintText: 'Write you email here..',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                controller: controller.loginPasswordEditingController,
                decoration: InputDecoration(
                  label: Text('Password'),
                  hintText: 'Write you password here..',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),

              ElevatedButton(
                onPressed: () async {
                  if (await controller.login()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  }
                },
                child: Text('Login'),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Expanded(child: Text('Or')),
                  Expanded(child: Divider()),
                ],
              ),

              SizedBox(height: 10),

              TextFormField(
                controller: controller.signupNameEditingController,
                decoration: InputDecoration(
                  label: Text('Name'),
                  hintText: 'Write you name here..',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                controller: controller.signupEmailEditingController,
                decoration: InputDecoration(
                  label: Text('Email'),
                  hintText: 'Write you email here..',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),

              TextFormField(
                controller: controller.signupPasswordEditingController,
                decoration: InputDecoration(
                  label: Text('Password'),
                  hintText: 'Write you password here..',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                controller: controller.signupConfirmPasswordEditingController,
                decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  hintText: 'Write you confirm password here..',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  controller.signup();
                },
                child: Text('Registration'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
