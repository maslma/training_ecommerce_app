import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:ecommerce/core/theme/app_colors.dart';
import 'package:ecommerce/core/theme/app_text_styles.dart';
import 'package:ecommerce/features/bottomnavbar/presentaion/data/models/prodect_model.dart';
import 'package:flutter/material.dart';

class ListItmeHome extends StatelessWidget {
  final ProdectModel prodectModel;
  const ListItmeHome({super.key, required this.prodectModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: DecoratedBox(
        decoration: BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    prodectModel.imageUrl,
                    height: 200,
                    width: 148,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 40,
                  height: 24,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child:  Text(
                        '${prodectModel.discontVule}%',
                        style: AppTextStyles.font11WhiteWeight400,
                      ),
                    ),
                  ),
                ).onlyPadding(leftPadding: 9, topPadding: 8),
              ],
            ),
            6.verticalSizedBox,
            Text(
              prodectModel.category,
              style: AppTextStyles.font11GrayWeight400,
            ),
            5.verticalSizedBox,
            Text(prodectModel.title, style: AppTextStyles.font16BlackWeight400),
            3.verticalSizedBox,
            Row(
              children: [
                Text(
                  '${prodectModel.price}\$',
                  style: AppTextStyles.font14GrayWeight500,
                ),
                4.horizontalSizedBox,
                Text(
                  '${prodectModel.discontVule}\$',
                  style: AppTextStyles.font14RedWeight500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
