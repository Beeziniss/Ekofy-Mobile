import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OtpScreen extends ConsumerWidget {
  final String email;
  const OtpScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authProvider, (previous, next) {
      if (next is AuthVerifyOtpSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Create account successfully, please log in to continue',
            ),
            backgroundColor: Colors.green,
          ),
        );
        context.push(RouteName.login);
      } else if (next is AuthVerifyOtpFailure) {
        var message = next.message;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), backgroundColor: AppColors.error),
        );
      }
    });

    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            _logoImage(),
            SizedBox(height: 20),
            _titleAndConfirmText(),
            SizedBox(height: 50),
            _otpFieldText(ref),
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
            fontSize: 22,
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

  Widget _otpFieldText(WidgetRef ref) {
    return OtpTextField(
      numberOfFields: 6,
      borderColor: AppColors.deepBlue,
      showFieldAsBox: true,
      fieldWidth: 45,
      alignment: Alignment.center,
      textStyle: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      onCodeChanged: (String code) {},

      onSubmit: (String verificationCode) {
        ref
            .read(authProvider.notifier)
            .verifyOTP(email: email, otp: verificationCode);
      },
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
