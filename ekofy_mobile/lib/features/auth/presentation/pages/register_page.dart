import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/utils/validators.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/features/auth/presentation/pages/login_page.dart';
import 'package:ekofy_mobile/core/widgets/button/gradient_border_text_field.dart';
import 'package:ekofy_mobile/features/auth/presentation/pages/otp_verify_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final GlobalKey _tooltipIconKey = GlobalKey();
  bool _obscurePassword = true;
  OverlayEntry? _tooltipOverlay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImages.backgroundLogin),
                ),
              ),
            ),

            Container(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.8),
            ),

            Positioned.fill(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SvgPicture.asset(AppVectors.logo),
                      ),

                      const SizedBox(height: 40),

                      _welcomeBackTitle(),

                      const SizedBox(height: 40),

                      _noteText(),

                      const SizedBox(height: 40),

                      _emailFieldInput(),

                      const SizedBox(height: 20),

                      _passwordFieldInput(),

                      const SizedBox(height: 20),

                      _confirmPasswordFieldInput(),

                      const SizedBox(height: 30),

                      _continueButton(context),

                      const SizedBox(height: 20),

                      _loginNavigationText(),

                      const SizedBox(height: 20),

                      SvgPicture.asset(AppVectors.orSplit),

                      const SizedBox(height: 20),

                      _loginWithGoogleButtton(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _welcomeBackTitle() {
    return const Text(
      'Let’s get started',
      style: TextStyle(
        fontSize: 35,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _noteText() {
    return const Text(
      'We will send you a verification code through the registered email.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _loginNavigationText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?  ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginPage()),
            );
          },
          child: const Text(
            'Log in to Ekofy.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Poppins',
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  Widget _emailFieldInput() {
    return GradientBorderTextField(
      label: 'Email',
      gradientColors: [AppColors.deepBlue, AppColors.violet],
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        hintStyle: const TextStyle(color: Colors.white70),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 10,
        ),
      ),
      validator: Validators.isEmailValid,
    );
  }

  Widget _passwordFieldInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(width: 6),
            GestureDetector(
              // key: _tooltipIconKey,
              onTap: () {
                _showTooltip(context);
              },
              child: SvgPicture.asset('assets/vectors/tooltip_icon.svg'),
            ),
          ],
        ),
        const SizedBox(height: 5),

        GradientBorderTextField(
          label: '',
          gradientColors: [AppColors.deepBlue, AppColors.violet],
          controller: _passwordController,
          obscureText: _obscurePassword,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            hintStyle: const TextStyle(color: Colors.white70),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 12,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.white70,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          validator: Validators.isPasswordValid,
        ),
      ],
    );
  }

  Widget _confirmPasswordFieldInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        const SizedBox(height: 5),

        GradientBorderTextField(
          label: '',
          gradientColors: [AppColors.deepBlue, AppColors.violet],
          controller: _confirmPasswordController,
          obscureText: _obscurePassword,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            hintStyle: const TextStyle(color: Colors.white70),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 12,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.white70,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          validator: (passwordConfirm) {
            if (passwordConfirm != _passwordController.text) {
              return 'Password do not match';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _continueButton(BuildContext context) {
    return CustomButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // final email = _emailController.text.trim();
          // final password = _passwordController.text;

          // call api login here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OtpVerifyPage()),
          );
        }
      },
      title: 'Continue',
      height: 45,
      gradientColors: [AppColors.deepBlue, AppColors.violet],
    );
  }

  Widget _loginWithGoogleButtton() {
    return CustomButton(
      onPressed: () {},
      title: 'Continue with Google',
      height: 45,
      gradientColors: [
        const Color.fromARGB(120, 44, 44, 44),
        const Color.fromARGB(120, 44, 44, 44),
      ],
      assetPath: AppVectors.googleLogo,
    );
  }

  void _showTooltip(BuildContext context) {
    _hideTooltip(); // Xoá cái cũ nếu có

    final renderBox =
        _tooltipIconKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final position = renderBox.localToGlobal(Offset.zero);

    _tooltipOverlay = OverlayEntry(
      builder: (context) => Stack(
        children: [
          // Transparent area to detect tap outside
          Positioned.fill(
            child: GestureDetector(
              onTap: _hideTooltip,
              child: Container(color: Colors.transparent),
            ),
          ),

          Positioned(
            left: position.dx - 75,
            top: position.dy - 110,
            child: Material(
              color: Colors.transparent,
              child: SvgPicture.asset(
                'assets/vectors/password_tooltip.svg',
                width: 350,
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_tooltipOverlay!);
  }

  void _hideTooltip() {
    _tooltipOverlay?.remove();
    _tooltipOverlay = null;
  }
}
