import 'package:e_commerce_dys/core/helpers/extenstions.dart';
import 'package:e_commerce_dys/core/utils/colors.dart';
import 'package:e_commerce_dys/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/texts.dart';
import '../../../../core/widgets/custom_text_field_widget.dart';
import '../../../../core/widgets/titled_button.dart';
import '../widgets/auth_app_bar.dart';
import '../widgets/social_account_auth_widget.dart';
import '../widgets/text_and_forward_arrow_button.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryGreyColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 30.h),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthenticationAppBar(appBarTitle: logInTextKey),
                    SizedBox(height: (context.height * 0.1).h),
                    CustomTextFieldWidget(
                      title: emailTextKey,
                      hintText: emailTextKey,
                      controller: TextEditingController(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFieldWidget(
                      title: passwordTextKey,
                      hintText: passwordTextKey,
                      controller: TextEditingController(),
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 10.h),
                    TextAndForwardArrowButton(text: forgetYourPasswordTextKey, onTap: () => context.pushNamed(AppRoutes.forgetPasswordScreenRoute)),
                    SizedBox(height: 60.h,),
                    TitledButton(title: logInTextKey.toUpperCase(), onTap: (){},),
                  ],
                ),
                Positioned(
                  bottom: context.height * 0.05,
                  right: context.width * 0.1,
                  left: context.width * 0.1,
                  child: SocialAccountAuthWidget(
                    headerText: orLogInWithSocialAccountTextKey,
                    googleAuthOnTap: () {},
                    facebookAuthOnTap: () {},
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}


