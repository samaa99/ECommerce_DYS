import 'package:e_commerce_dys/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/text_styles.dart';
import 'logo_button.dart';

class SocialAccountAuthWidget extends StatelessWidget {
  final String headerText;
  final Function facebookAuthOnTap;
  final Function googleAuthOnTap;
  const SocialAccountAuthWidget({super.key, required this.headerText, required this.facebookAuthOnTap, required this.googleAuthOnTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(headerText, style: AppTextStyles.fontBlack14W400),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoButton(image: AppAssets.googleLogo, onTap: googleAuthOnTap),
            SizedBox(width: 12.h),
            LogoButton(image: AppAssets.facebookLogo, onTap: facebookAuthOnTap),
          ],
        ),
      ],
    );
  }
}
