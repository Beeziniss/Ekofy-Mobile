import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppImages.backgroundLogin
                )
              )
            ),
          ),

          Container(
            // ignore: deprecated_member_use
            color:Colors.black.withOpacity(0.8)
          ),

          Container(
            padding:EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo
                  )
                ),
                
                //  Spacer(),
                const Text(
                  'Let’s get started',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Enter your email and password to create a new account.\n We\'ll send you a verification code via the email.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                    
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                CustomButton(
                  onPressed: (){

                  }, 
                  title: 'Log in', 
                  height: 45,
                  gradientColors: [
                    AppColors.deepBlue,
                    AppColors.violet
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  'Don’t have an account? Sign up to Ekofy.'
                )
              ],
            )
          ),

        ],
      )
    );
  }
}