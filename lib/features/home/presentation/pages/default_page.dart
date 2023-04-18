import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:recharme/core/utils/colors.dart';
import 'package:recharme/features/home/presentation/blocs/cubit/nav_bar_cubit_cubit.dart';
import 'package:recharme/features/home/presentation/pages/home_page.dart';

import '../widgets/botton_nav_bar_text.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navBarCubitCubit = context.watch<NavBarCubitCubit>();

    List<Widget> buildScreens() {
      return [
        const HomePage(),
        Center(
            child: GestureDetector(
                onTap: () => navBarCubitCubit.changeSelectedTab(0),
                child: const Text("Second Page"))),
        const Center(child: Text("3era Page")),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Column(
            children: [
              const Icon(CupertinoIcons.home),
              SizedBox(height: 4.h),
              DefaultTextStyle(
                style: const TextStyle(),
                child: navBarCubitCubit.controller.index == 0
                    ? const BottonNavBarText(
                        text: 'Home',
                      )
                    : const Text(''),
              ),
            ],
          ),
          // title: ("Home"),
          activeColorPrimary: colorPink,
          inactiveColorPrimary: colorGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Column(
            children: [
              const Icon(FontAwesomeIcons.addressBook),
              SizedBox(height: 4.h),
              DefaultTextStyle(
                style: const TextStyle(),
                child: navBarCubitCubit.controller.index == 1
                    ? const BottonNavBarText(text: 'Lista Recargas')
                    : const Text(''),
              ),
            ],
          ),
          activeColorPrimary: colorPink,
          inactiveColorPrimary: colorGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Column(
            children: [
              const Icon(FontAwesomeIcons.searchengin),
              SizedBox(height: 4.h),
              DefaultTextStyle(
                style: const TextStyle(),
                child: navBarCubitCubit.controller.index == 2
                    ? const BottonNavBarText(text: 'Buscar')
                    : const Text(''),
              ),
            ],
          ),
          activeColorPrimary: colorPink,
          inactiveColorPrimary: colorGrey,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: navBarCubitCubit.controller,
      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: const Color(0xffFDFEFE), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.w),
            topRight: Radius.circular(40.w),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.w,
            )
          ]),
      popAllScreensOnTapOfSelectedTab: true,
      navBarHeight: 80.h,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
      padding: NavBarPadding.only(top: 20.h),
      onItemSelected: (value) {
        navBarCubitCubit.changeSelectedTab(value);
      },

      // Choose the nav bar style with this property.
    );
  }
}
