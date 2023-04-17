import 'package:get_it/get_it.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:recharme/features/home/presentation/blocs/cubit/nav_bar_cubit_cubit.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

Future<void> init() async {
  //? CORE
  getIt.registerSingleton(PersistentTabController());

  //?BLOCS
  getIt.registerFactory(() => NavBarCubitCubit(getIt<PersistentTabController>()));
}
