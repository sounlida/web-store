import 'package:e_shop/core/app_export.dart';
import 'package:e_shop/widgets/custom_elevated_button.dart';
import 'package:e_shop/widgets/custom_icon_button.dart';
import 'package:e_shop/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildPageHeader(context),
                                  SizedBox(height: 30.v),
                                  _buildFullName(context),
                                  SizedBox(height: 8.v),
                                  _buildEmail(context),
                                  SizedBox(height: 8.v),
                                  _buildPassword(context),
                                  SizedBox(height: 8.v),
                                  _buildPassword1(context),
                                  SizedBox(height: 20.v),
                                  _buildSignUp(context),
                                  SizedBox(height: 20.v),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Have an account?",
                                            style: CustomTextStyles
                                                .bodySmallff9098b1),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "Sign In",
                                            style: CustomTextStyles
                                                .labelLargeff40bfff)
                                      ]),
                                      textAlign: TextAlign.left),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(children: [
      CustomIconButton(
          height: 72.adaptSize,
          width: 72.adaptSize,
          padding: EdgeInsets.all(20.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          child: CustomImageView(imagePath: ImageConstant.imgClose)),
      SizedBox(height: 16.v),
      Text("Let’s Get Started", style: theme.textTheme.titleMedium),
      SizedBox(height: 9.v),
      Text("Create an new account", style: theme.textTheme.bodySmall)
    ]);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController,
        hintText: "Full Name",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Your Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEmailIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController1,
        hintText: "Password Again",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardContainerScreen);
  }
}
