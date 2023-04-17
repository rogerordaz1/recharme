import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

part 'nav_bar_cubit_state.dart';

class NavBarCubitCubit extends Cubit<NavBarCubitState> {
  final PersistentTabController controller;

  NavBarCubitCubit(this.controller) : super(const NavBarCubitState(0));

  void changeSelectedTab(int index) {
    controller.jumpToTab(index);

    emit(state.copyWith(tabIndex: controller.index));
  }
}
