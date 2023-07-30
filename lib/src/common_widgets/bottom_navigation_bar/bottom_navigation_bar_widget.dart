import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

import '../../routing/app_route.dart';
import '../../constants/constants.dart';

final selectedIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class BottomNavigationBarWidget extends ConsumerWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final selectedIndexNotifier = ref.watch(selectedIndexProvider.notifier);

    onChange(int newValue) {
      selectedIndexNotifier.update((state) => newValue);
      switch (newValue) {
        case 0:
          context.go(Routes.init.path);
          break;
        case 1:
          context.go(Routes.pemesananHistory.path);
          break;
        case 2:
          context.go(Routes.profile.path);
          break;
        default:
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3.w,
            blurRadius: 8.h,
            offset: Offset(0, 3.w), // changes position of shadow
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.ioxhost),
            label: 'Jadwal',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.calendar),
            label: 'Pemesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.user),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        fixedColor: ColorApp.purpleDark,
        backgroundColor: ColorApp.offGrey,
        unselectedItemColor: ColorApp.halfGrey,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        onTap: onChange,
      ),
    );
  }
}
