import 'package:flutter/material.dart';
import 'package:soccer_app/utils/colors.dart';

class MyBottomNavBarItems extends StatelessWidget {
  final bool isActive;
  final VoidCallback onTap;
  final IconData icon;

  const MyBottomNavBarItems({
    super.key,
    required this.isActive,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: onTap,
            icon: Icon(
              icon,
              color: isActive ? AppColors.activeIcon : Colors.grey.shade400,
              size: 30,
            ),
          ),
          const SizedBox(height: 2),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: isActive ? 4 : 0,
            width: 40,
            decoration: BoxDecoration(
              color: isActive ? AppColors.activeIcon : Colors.transparent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
