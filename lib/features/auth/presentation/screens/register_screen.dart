import 'package:e_commerce_dys/core/helpers/extenstions.dart';
import 'package:e_commerce_dys/core/routing/routes.dart';
import 'package:e_commerce_dys/core/utils/colors.dart';
import 'package:e_commerce_dys/core/utils/constants_sizes.dart';
import 'package:e_commerce_dys/core/utils/text_styles.dart';
import 'package:e_commerce_dys/core/widgets/titled_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/texts.dart';
import '../../../../core/widgets/custom_text_field_widget.dart';
import '../widgets/auth_app_bar.dart';
import '../widgets/logo_button.dart';
import '../widgets/social_account_auth_widget.dart';
import '../widgets/text_and_forward_arrow_button.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  AuthenticationAppBar(appBarTitle: signUpTextKey, withBackButton: false),
                  SizedBox(height: (context.height * 0.1).h),
                  CustomTextFieldWidget(
                    title: nameTextKey,
                    hintText: nameTextKey,
                    controller: TextEditingController(),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 10.h),
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
                  TextAndForwardArrowButton(text: alreadyHaveAnAccountTextKey, onTap: () => context.pushNamed(AppRoutes.loginScreenRoute)),
                  SizedBox(height: 40.h,),
                  TitledButton(title: logInTextKey.toUpperCase(), onTap: (){}),
                ],
              ),
              Positioned(
                  bottom: context.height * 0.05,
                  right: context.width * 0.1,
                  left: context.width * 0.1,
                  child: SocialAccountAuthWidget(
                    headerText: orSignupWithSocialAccountTextKey,
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


