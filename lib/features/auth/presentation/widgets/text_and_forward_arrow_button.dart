import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/text_styles.dart';

class TextAndForwardArrowButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const TextAndForwardArrowButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(text, style: AppTextStyles.fontBlack14W400),
          SizedBox(width: 4.w),
          Icon(Icons.arrow_forward_outlined, color: AppColors.primaryRedColor, size: 16.sp)
        ],
      ),
    );
  }
}
