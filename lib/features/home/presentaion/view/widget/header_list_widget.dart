import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class HeaderListWidget extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;
  const HeaderListWidget({
    super.key,
    required this.title,
    this.onTap,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppTextStyles.font34BlackWeight700),
            InkWell(
              onTap: onTap,
              child: Text(
                "view all",
                style: AppTextStyles.font11BlackWeight400,
              ),
            ),
          ],
        ),
        Text(description, style: AppTextStyles.font11GrayWeight400),
      ],
    ).horizontalPadding(18);
  }
}
