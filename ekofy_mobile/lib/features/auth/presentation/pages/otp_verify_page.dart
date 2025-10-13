import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';

class OtpVerifyPage extends StatelessWidget {
  const OtpVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            _logoImage(),
            SizedBox(height: 20),
            _titleAndConfirmText(),
            SizedBox(height: 50),
            _otpFieldText(),
            SizedBox(height: 20),
            _resendOtpText(),
          ],
        ),
      ),
      backgroundColor: AppColors.primaryBackground,
    );
  }

  Widget _logoImage() {
    return Align(
      alignment: Alignment.topCenter,
      child: SvgPicture.asset(AppVectors.logo),
    );
  }

  Widget _titleAndConfirmText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Enter the verification code',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: AppColors.purpleIshWhite,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Please check your email.',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'BE_Vietnam_Pro',
            fontWeight: FontWeight.normal,
            color: AppColors.purpleIshWhite,
          ),
        ),
      ],
    );
  }

  Widget _otpFieldText() {
    return OtpTextField(
      numberOfFields: 6,
      borderColor: AppColors.deepBlue,
      showFieldAsBox: true,
      fieldWidth: 50,
      alignment: Alignment.center,
      textStyle: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      onCodeChanged: (String code) {},

      // onSubmit(String verificationCode){
      //call api
      // }
    );
  }

  Widget _resendOtpText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Not receive the code? ",
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'BE_Vietnam_Pro',
            fontWeight: FontWeight.normal,
            color: AppColors.purpleIshWhite,
          ),
        ),
        TextButton(
          onPressed: () {
            // Resend OTP logic
          },
          child: GestureDetector(
            onTap: () {
              // Resend OTP logic
            },
            child: Text(
              'Resend the code',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'BE_Vietnam_Pro',
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: AppColors.purpleIshWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
