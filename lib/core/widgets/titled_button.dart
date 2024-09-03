import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/constants_sizes.dart';
import '../utils/text_styles.dart';

class TitledButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const TitledButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(mediumBorderRadius),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(mediumBorderRadius),
          color: AppColors.primaryRedColor,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Text(title, style: AppTextStyles.fontWhite14W400, textAlign: TextAlign.center,),
      ),
    );
  }
}
