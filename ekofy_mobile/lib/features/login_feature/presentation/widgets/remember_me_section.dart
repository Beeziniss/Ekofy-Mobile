import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class RememberMeSection extends StatefulWidget {
  const RememberMeSection({super.key});

  @override
  State<RememberMeSection> createState() => _RememberMeSectionState();
}

class _RememberMeSectionState extends State<RememberMeSection> {
  bool isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GradientCheckbox(
              value: isRememberMeChecked,
              onChanged: (val) {
                setState(() {
                  isRememberMeChecked = val;
                });
              },
            ),
            const SizedBox(width: 5),
            const Text(
              'Remember me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
        GestureDetector(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (_) => const RegisterPage()
          //     )
          //   );
          // },
          child: const Text(
            'Forgot your password?',
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
}


class GradientCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const GradientCheckbox({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: value
              ? LinearGradient(
                  colors: [
                    AppColors.deepBlue,
                    AppColors.violet
                  ],
                )
              : null,
          border: Border.all(
            color: Colors.white30,
            width: 1.5,
          ),
        ),
        child: value
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 16,
              )
            : null,
      ),
    );
  }
}