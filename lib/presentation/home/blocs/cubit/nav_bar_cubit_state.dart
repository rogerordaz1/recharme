// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'nav_bar_cubit_cubit.dart';

class NavBarCubitState extends Equatable {
  final int tabIndex;

  const NavBarCubitState(
    this.tabIndex,
  );

  @override
  List<Object> get props => [tabIndex];

  NavBarCubitState copyWith({
    int? tabIndex,
  }) {
    return NavBarCubitState(
      tabIndex ?? this.tabIndex,
    );
  }
}
