import 'package:ecommerce/features/home/presentaion/view/data/cubit.dart';
import 'package:ecommerce/features/home/presentaion/view/data/state.dart';
import 'package:ecommerce/features/home/presentaion/view/widget/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        final pages = [
          const Center(child: Text("Home")),
          const Center(child: Text("Shop")),
          const Center(child: Text("Bag")),
          const Center(child: Text("Favorites")),
          const Center(child: Text("Profile")),
        ];

        return Scaffold(
          body: pages[state.currentIndex],
          bottomNavigationBar: AppBottomNavBar(
            currentIndex: state.currentIndex,
            onTap: (i) => context.read<MainCubit>().changeTab(i),
          ),
        );
      },
    );
  }
}
