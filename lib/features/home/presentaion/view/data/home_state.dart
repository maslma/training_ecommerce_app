abstract class HomeState {}

// BottomNavBar
class BottomNavInitial extends HomeState {
  final int currentIndex = 0;
}

class BottomNavChanged extends HomeState {
  final int currentIndex;

  BottomNavChanged(this.currentIndex);
}
