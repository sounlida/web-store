import 'package:e_shop/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Products1ItemWidget extends StatelessWidget {
  const Products1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgProductPicture02,
        height: 72.adaptSize,
        width: 72.adaptSize,
        radius: BorderRadius.circular(
          8.h,
        ),
      ),
    );
  }
}
