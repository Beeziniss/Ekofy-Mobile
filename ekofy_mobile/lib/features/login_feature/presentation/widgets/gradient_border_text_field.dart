import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class GradientBorderTextField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final TextInputType keyboardType;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final List<Color> gradientColors;

  const GradientBorderTextField({
    super.key,
    required this.controller,
    required this.label,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.decoration,
    this.validator,
    this.suffixIcon,
    required this.gradientColors,
  });

  @override
  State<GradientBorderTextField> createState() => _GradientBorderTextFieldState();
}

class _GradientBorderTextFieldState extends State<GradientBorderTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() => _isFocused = _focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);

    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     if (widget.label.isNotEmpty)
    //       Padding(
    //         padding: const EdgeInsets.only(bottom: 5),
    //         child:          Text(
    //           widget.label,
    //           style: const TextStyle(
    //             fontSize: 14,
    //             color: Colors.white,
    //             fontWeight: FontWeight.w500,
    //           ),
    //         ),
    //       ),


        
    //     AnimatedContainer(
    //       duration: const Duration(milliseconds: 200),
    //       padding: const EdgeInsets.all(2),
    //       decoration: BoxDecoration(
    //         borderRadius: borderRadius,
    //         gradient: _isFocused
    //             ? LinearGradient(colors: widget.gradientColors)
    //             : const LinearGradient(colors: [Colors.white60, Colors.white60]),
    //       ),
    //       child: Container(
    //         decoration: BoxDecoration(
    //           borderRadius: borderRadius,
    //           color: AppColors.secondaryBackground,
    //         ),
    //         child: TextFormField(
    //           controller: widget.controller,
    //           focusNode: _focusNode,
    //           obscureText: widget.obscureText,
    //           keyboardType: widget.keyboardType,
    //           style: const TextStyle(fontSize: 14, color: Colors.white),
    //           decoration: widget.decoration,
    //           validator: widget.validator
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    return FormField<String>(
    validator: widget.validator,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    builder: (FormFieldState<String> state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              gradient: _isFocused
                  ? LinearGradient(colors: widget.gradientColors)
                  : const LinearGradient(colors: [Colors.white60, Colors.white60]),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: AppColors.secondaryBackground,
              ),
              child: TextFormField(
                controller: widget.controller,
                focusNode: _focusNode,
                obscureText: widget.obscureText,
                keyboardType: widget.keyboardType,
                style: const TextStyle(fontSize: 14, color: Colors.white),
                decoration: widget.decoration,
                onChanged: (val) {
                  state.didChange(val); // cập nhật validator
                },
              ),
            ),
          ),

          if (state.hasError)
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 4),
              child: Text(
                state.errorText!,
                style: const TextStyle(
                  color: AppColors.error,
                  fontSize: 14,
                ),
              ),
            ),
        ],
      );
    },
  );
  }
}