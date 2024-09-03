import 'package:e_commerce_dys/core/helpers/extenstions.dart';
import 'package:e_commerce_dys/core/utils/colors.dart';
import 'package:e_commerce_dys/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/texts.dart';
import '../../../../core/widgets/custom_text_field_widget.dart';
import '../../../../core/widgets/titled_button.dart';
import '../widgets/auth_app_bar.dart';
import '../widgets/social_account_auth_widget.dart';
import '../widgets/text_and_forward_arrow_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryGreyColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthenticationAppBar(appBarTitle: forgetPasswordTextKey),
                SizedBox(height: (context.height * 0.1).h),
                Text(pleaseEnterYourEmailTextKey, style: AppTextStyles.fontBlack14W400),
                SizedBox(height: 20.h),
                CustomTextFieldWidget(
                  title: emailTextKey,
                  hintText: emailTextKey,
                  controller: TextEditingController(),
                  onChanged: (value) {},
                ),
                SizedBox(height: 60.h,),
                TitledButton(title: sendTextKey.toUpperCase(), onTap: (){},),
              ],
            ),
          ),
        )
    );
  }
}


