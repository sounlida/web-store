import 'package:e_shop/core/app_export.dart';
import 'package:e_shop/widgets/app_bar/appbar_leading_image.dart';
import 'package:e_shop/widgets/app_bar/appbar_subtitle.dart';
import 'package:e_shop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  _buildPaymentOptionPaypal(context,
                      paypalIcon: ImageConstant.imgCreditCardIcon,
                      paypalText: "Credit Card Or Debit",
                      onTapPaymentOptionPaypal: () {
                    onTapPaymentOptionPaypal(context);
                  }),
                  _buildPaymentOptionPaypal(context,
                      paypalIcon: ImageConstant.imgPaypalIcon,
                      paypalText: "Paypal"),
                  SizedBox(height: 5.v),
                  _buildPaymentOptionPaypal(context,
                      paypalIcon: ImageConstant.imgBankIcon,
                      paypalText: "Bank Transfer")
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Payment", margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildPaymentOptionPaypal(
    BuildContext context, {
    required String paypalIcon,
    required String paypalText,
    Function? onTapPaymentOptionPaypal,
  }) {
    return GestureDetector(
        onTap: () {
          onTapPaymentOptionPaypal!.call();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(children: [
              CustomImageView(
                  imagePath: paypalIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 4.v),
                  child: Text(paypalText,
                      style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(1))))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  onTapPaymentOptionPaypal(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }
}
