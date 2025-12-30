import 'package:ecommerce/core/theme/app_colors.dart';
import 'package:ecommerce/core/theme/app_text_styles.dart';
import 'package:ecommerce/features/bottomnavbar/presentaion/controller/bottom_nav_bar_cubit.dart';
import 'package:ecommerce/features/bottomnavbar/presentaion/controller/bottom_nav_bar_state.dart';
import 'package:ecommerce/generated/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        final cubit = context.read<BottomNavBarCubit>();

        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.grayColor,
          selectedLabelStyle: AppTextStyles.font10RedWeight400,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              icon: cubit.currentIndex == 0
                  ? SvgPicture.asset(
                      AppAssets.imagesHomeBold,
                      width: 30,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      AppAssets.imagesHome,
                      width: 30,
                      height: 30,
                    ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: cubit.currentIndex == 1
                  ? SvgPicture.asset(
                      AppAssets.imagesShopBold,
                      width: 30,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      AppAssets.imagesShop,
                      width: 30,
                      height: 30,
                    ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: cubit.currentIndex == 2
                  ? SvgPicture.asset(
                      AppAssets.imagesBagBold,
                      width: 30,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      AppAssets.imagesBag,
                      width: 30,
                      height: 30,
                    ),
              label: "Bag",
            ),
            BottomNavigationBarItem(
              icon: cubit.currentIndex == 3
                  ? SvgPicture.asset(
                      AppAssets.imagesFavoritesBold,
                      width: 30,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      AppAssets.imagesFavorites,
                      width: 30,
                      height: 30,
                    ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: cubit.currentIndex == 4
                  ? SvgPicture.asset(
                      AppAssets.imagesProfileBold,
                      width: 30,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      AppAssets.imagesProfile,
                      width: 30,
                      height: 30,
                    ),
              label: "Profile",
            ),
          ],
        );
      },
    );
  }
}
