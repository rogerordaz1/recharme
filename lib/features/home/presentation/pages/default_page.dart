import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:recharme/core/colors.dart';
import 'package:recharme/features/home/presentation/pages/home_page.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return [
        const HomePage(),
        const Center(child: Text("Second Page")),
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
                child: controller.index == 0
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
                child: controller.index == 1
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
                child: controller.index == 2
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
      controller: controller,
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
        setState(() {
          controller.index = value;
        });
      },

      // Choose the nav bar style with this property.
    );
  }
}

class BottonNavBarText extends StatelessWidget {
  const BottonNavBarText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12.sp, color: colorMiniText, fontWeight: FontWeight.bold),
    );
  }
}
