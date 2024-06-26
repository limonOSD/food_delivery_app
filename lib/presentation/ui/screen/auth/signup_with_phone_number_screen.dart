import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/ui/screen/auth/signup_screen.dart';
import 'package:get/get.dart';

import 'signin_screen.dart';

class SignUpWithPhoneNumber extends StatelessWidget {
  const SignUpWithPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 55, right: 20),
              child: Text(
                '''Let's get started''',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Mobile Number',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    flex: 30,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+880',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 70,
                  child: TextFormField(
                    decoration: (InputDecoration()),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
                child: Text('Continue'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  width: 4,
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => SignInScreen());
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.titleMedium,
                    ))
              ],
            ),
          ])),
    ));
  }
}
