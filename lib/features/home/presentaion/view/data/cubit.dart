import 'package:ecommerce/features/home/presentaion/view/data/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState(currentIndex: 0));

  void changeTab(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
