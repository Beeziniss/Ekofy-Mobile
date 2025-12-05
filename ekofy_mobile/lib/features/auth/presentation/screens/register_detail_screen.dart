import 'dart:developer';

import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/assets/app_vectors.dart';
import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/widgets/button/custom_button.dart';
import 'package:ekofy_mobile/core/widgets/button/gradient_border_text_field.dart';
import 'package:ekofy_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class RegisterDetailScreen extends ConsumerStatefulWidget {
  final String email;
  final String password;
  final String confirmPassword;

  const RegisterDetailScreen({
    super.key,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  @override
  ConsumerState<RegisterDetailScreen> createState() =>
      _RegisterDetailScreenState();
}

class _RegisterDetailScreenState extends ConsumerState<RegisterDetailScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _birthDateController = TextEditingController();

  String _selectedGender = 'Male';
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authProvider, (previous, next) {
      if (next is AuthRegisterSuccess) {
        context.push('/otp/${widget.email}');
      } else if (next is AuthRegisterFailure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.message + ' - ' + next.status)),
        );
      }
    });

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
            // ignore: deprecated_member_use
            Container(color: Colors.black.withOpacity(0.8)),
            Positioned.fill(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SvgPicture.asset(AppVectors.logo),
                      ),
                      const SizedBox(height: 40),
                      _titleText(),
                      const SizedBox(height: 40),
                      _fullNameFieldInput(),
                      const SizedBox(height: 20),
                      _displayNameFieldInput(),
                      const SizedBox(height: 20),
                      _birthDateFieldInput(context),
                      const SizedBox(height: 20),
                      _genderDropdown(),
                      const SizedBox(height: 40),
                      _registerButton(context),
                    ],
                  ),
                ),
              ),
            ),
            // Back button
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleText() {
    return const Text(
      'Complete your profile',
      style: TextStyle(
        fontSize: 28,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameFieldInput() {
    return GradientBorderTextField(
      label: 'Full Name',
      gradientColors: [AppColors.deepBlue, AppColors.violet],
      controller: _fullNameController,
      decoration: const InputDecoration(
        hintText: 'Enter your full name',
        hintStyle: TextStyle(color: Colors.white70),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your full name';
        }
        return null;
      },
    );
  }

  Widget _displayNameFieldInput() {
    return GradientBorderTextField(
      label: 'Display Name',
      gradientColors: [AppColors.deepBlue, AppColors.violet],
      controller: _displayNameController,
      decoration: const InputDecoration(
        hintText: 'Enter your display name',
        hintStyle: TextStyle(color: Colors.white70),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your display name';
        }
        return null;
      },
    );
  }

  Widget _birthDateFieldInput(BuildContext context) {
    return GradientBorderTextField(
      label: 'Date of Birth',
      gradientColors: [AppColors.deepBlue, AppColors.violet],
      controller: _birthDateController,
      readOnly: true,
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: _selectedDate ?? DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (picked != null && picked != _selectedDate) {
          setState(() {
            _selectedDate = picked;
            // Cập nhật lại controller và UI
            _birthDateController.text = DateFormat('dd-MM-yyyy').format(picked);
          });
        }
      },
      decoration: const InputDecoration(
        hintText: 'Select your birth date',
        hintStyle: TextStyle(color: Colors.white70),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        suffixIcon: Icon(Icons.calendar_today, color: Colors.white70),
      ),
      validator: (value) {
        // Kiểm tra nếu giá trị trong controller là null hoặc trống
        // if (value == null || value.isEmpty) {
        //   return 'Please select your birth date';
        // }
        return null;
      },
    );
  }

  Widget _genderDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: AppColors.secondaryBackground,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white60),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedGender,
              dropdownColor: AppColors.secondaryBackground,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              isExpanded: true,
              style: const TextStyle(color: Colors.white, fontSize: 14),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue!;
                });
              },
              items: <String>['Male', 'Female', 'NotSpecified']
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _registerButton(BuildContext context) {
    return CustomButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ref
              .read(authProvider.notifier)
              .register(
                email: widget.email,
                password: widget.password,
                confirmPassword: widget.confirmPassword,
                fullName: _fullNameController.text.trim(),
                birthDate: _selectedDate!,
                gender: _selectedGender,
                displayName: _displayNameController.text.trim(),
              );
        }
        // navigate to OTP screen in authProvider listener
      },
      title: 'Register',
      height: 45,
      gradientColors: [AppColors.deepBlue, AppColors.violet],
    );
  }
}
