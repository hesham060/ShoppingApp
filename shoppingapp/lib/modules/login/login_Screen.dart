
import 'package:flutter/material.dart';
import 'package:shoppingapp/shared/components/component.dart';
import 'package:shoppingapp/shared/components/constants.dart';

import '../register/register_Screen.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Login now to Browse out hot offers',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              defaultTextFormField(
                type: TextInputType.emailAddress,
                controller: emailController,
                iconData: Icons.email_outlined,
                labelText: 'Email Address',
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Email Address';
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              defaultTextFormField(
                suffixIcon: Icons.visibility_outlined,
                type: TextInputType.visiblePassword,
                controller: passwordController,
                iconData: Icons.lock_outlined,
                labelText: 'password ',
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Email Password';
                  }
                },
              ),
              SizedBox(
                height: 50,
              ),
              defaultButtom(
                color: color,
                height: 40,
                ontap: () {
                  print('Login page is navigated');
                },
                radius: 12,
                text: Text('Login'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont\ have an account ? '),
                  defaultText(
                    Function: () {
                      navigateAndFinish(context, ResgisterScreen());
                    },
                    text: 'Register',
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
