import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/ui/screen/auth/guest_signUp_screen.dart';
import 'package:food_delivery_app/presentation/ui/screen/auth/signup_with_phone_number_screen.dart';
import 'package:food_delivery_app/presentation/ui/screen/profile_screen.dart';
import 'package:food_delivery_app/presentation/ui/utility/app_colors.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 55, right: 20),
                child: Text(
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: (InputDecoration(
                    hintText: 'Enter your email...', labelText: 'Email')),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: (InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: 'Enter your password...',
                  labelText: 'Password',
                )),
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 15,
                    margin: EdgeInsets.all(15),
                    child: Icon(
                      Icons.ramp_right,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text('Remember me'),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Forgot Password',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => ProfileScreen());
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''Don't have an account?''',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignUpWithPhoneNumber());
                      },
                      child: Text(
                        'sign Up',
                        style: Theme.of(context).textTheme.titleMedium,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'or',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: AppColors.primaryColor)),
                  onPressed: () {
                    Get.to(() => GuestSignUpScreen());
                  },
                  child: Text(
                    'Login As Guest',
                    style:
                        TextStyle(color: AppColors.primaryColor, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
