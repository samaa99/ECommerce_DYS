import 'package:e_commerce_dys/core/helpers/extenstions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/text_styles.dart';

class AuthenticationAppBar extends StatelessWidget {
  final String appBarTitle;
  final bool withBackButton;
  const AuthenticationAppBar({super.key, required this.appBarTitle, this.withBackButton = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (withBackButton)
          GestureDetector(
            onTap: () => context.pop(),
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: AppColors.primaryBlackColor,
              size: 20.sp,
            ),
          ),
        SizedBox(height: 12.h),
        Text(appBarTitle, style: AppTextStyles.fontBlack30Bold),
      ],
    );
  }
}
