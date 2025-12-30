import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/core/theme/app_text_styles.dart';
import 'package:ecommerce/generated/app_assets.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(
          AppAssets.imagesStreetClothes,
          height: 260,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Text(
          "Street Clothes",
          style: AppTextStyles.font34WhiteWeight900,
        ).onlyPadding(bottomPadding: 26, leftPadding: 16),
      ],
    );
  }
}
