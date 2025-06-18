import 'package:auvnet/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 16,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: const Color(0xFF8900FE),
        unselectedItemColor: const Color(0xFF677294),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        items: _buildNavigationItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildNavigationItems() {
    return [
      BottomNavigationBarItem(
        icon: Image.asset(Assets.imageHome, width: 28, height: 28),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(Assets.imageSearch, width: 28, height: 28),
        label: 'categories',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          Assets.imageIconParkOutlineDelivery,
          width: 28,
          height: 28,
        ),
        label: 'deliver',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(Assets.imageCard, width: 28, height: 28),
        label: 'cart',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(Assets.imageProfile, width: 28, height: 28),
        label: 'Profile',
      ),
    ];
  }
} 