import 'package:ecommerce/features/home/presentaion/view/data/home_cubit.dart';
import 'package:ecommerce/features/home/presentaion/view/data/home_state.dart';
import 'package:ecommerce/features/home/presentaion/view/widget/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final Cubit = context.read<HomeCubit>();
        return Scaffold(
          body: Cubit.currentPage,
          bottomNavigationBar: AppBottomNavBar(
            currentIndex: Cubit.currentIndex,
            onTap: Cubit.changeTab,
          ),
        );
      },
    );
  }
}
