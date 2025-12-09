import 'package:ecommerce/features/home/presentaion/view/data/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(BottomNavInitial());

  int currentIndex = 0;

  final List<Widget> pages = const [
    Center(child: Text("Home")),
    Center(child: Text("Shop")),
    Center(child: Text("Bag")),
    Center(child: Text("Favorites")),
    Center(child: Text("Profile")),
  ];

  Widget get currentPage => pages[currentIndex];

  void changeTab(int index) {
    currentIndex = index;
    emit(BottomNavChanged(index));
  }
}
