import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/constants_sizes.dart';
import '../utils/text_styles.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final String? initialValue;
  final Function(String) onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType keyboardType;
  const CustomTextFieldWidget({super.key, required this.title, required this.hintText, this.initialValue, required this.onChanged, this.validator, this.obscureText = false, this.keyboardType = TextInputType.text, required this.controller});

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {

  @override
  void initState() {
    super.initState();
    if(!widget.obscureText && widget.initialValue != null) widget.controller.text = widget.initialValue!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryWhiteColor,
        borderRadius: BorderRadius.circular(smallBorderRadius),
      ),
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: AppTextStyles.fontGrey12W400.copyWith(height: 0.6.h)),
          TextFormField(
            controller: widget.controller,
            // style: const TextStyle(color: AppColors.primaryWhiteColor),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: widget.hintText,
              hintStyle: AppTextStyles.fontGrey14W400,
              border: InputBorder.none,
            ),
            onChanged: widget.onChanged,
            validator: widget.validator ?? (String? value) => null,
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
          ),
        ],
      ),
    );
  }
}
