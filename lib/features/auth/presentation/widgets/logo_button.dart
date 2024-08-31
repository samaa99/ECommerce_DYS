import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/constants_sizes.dart';

class LogoButton extends StatelessWidget {
  final String image;
  final Function onTap;
  const LogoButton({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      borderRadius: BorderRadius.circular(mediumBorderRadius),
      child: Container(
          width: 70.h,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.primaryWhiteColor,
            borderRadius: BorderRadius.circular(mediumBorderRadius),
          ),
          child: Center(
            child: Image.asset(
              image,
              width: 30.h,
              height: 30.h,
            ),
          )
      ),
    );
  }
}
