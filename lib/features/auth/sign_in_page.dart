import 'package:flight_booking_app/core/constants/color.dart';
import 'package:flight_booking_app/features/auth/widgets/sign_in_button.dart';
import 'package:flight_booking_app/features/auth/widgets/social_medias.dart';
import 'package:flutter/material.dart';

import '../../core/route/rout_names.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.backgroundWhiteColor,
        appBar: AppBar(
          backgroundColor: CustomColor.backgroundWhiteColor,
          leading: const BackButton(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Start Your Journey with affordable price",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.greyColor,
                ),
              ),
              const SizedBox(height: 38),
              const Text(
                'EMAIL',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.greyColor,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'PASSWORD',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.greyColor,
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const SignInButton(),
              const SizedBox(height: 24),
              const Center(
                child: Text(
                  "Or Sign In With",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.greyColor,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const SocialMedias(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t Have an Account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.greyColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.signUpPage);
                    },
                    child: const Text("Sign Up", style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.mainColor,
                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
