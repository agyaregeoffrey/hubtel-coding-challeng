import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubtel_coding_challenge/ui/main/home_screen.dart';
import 'package:hubtel_coding_challenge/utils/colors.dart';
import 'package:hubtel_coding_challenge/utils/image_assets.dart';

class BottomNavLayout extends StatefulWidget {
  const BottomNavLayout({super.key});

  @override
  State<BottomNavLayout> createState() => _BottomNavLayoutState();
}

class _BottomNavLayoutState extends State<BottomNavLayout> {
  int _currentIndex = 0;

  final _screens = [
    const HomeScreen(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedFontSize: 12,
        items: [
          _bottomNavItem(
            asset: ImageAssets.icHome,
            index: 0,
          ),
          _bottomNavItem(
            label: 'Send',
            asset: ImageAssets.icSend,
            index: 1,
          ),
          _bottomNavItem(
            label: 'History',
            asset: ImageAssets.icHistory,
            index: 2,
          ),
          _bottomNavItem(
            label: 'Schedule',
            asset: ImageAssets.icSchedule,
            index: 3,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem _bottomNavItem({
    String? label,
    required String asset,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 6, bottom: 6),
        child: _currentIndex == index
            ? Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.accentLightColor,
                ),
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  asset,
                  width: 24,
                  height: 24,
                ),
              )
            : SvgPicture.asset(
                asset,
                width: 24,
                height: 24,
              ),
      ),
      label: '',
    );
  }
}
