import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:goodaction/screen/dashboard/dashboard.dart';
import 'package:goodaction/screen/initiatives/screens/initiatives.dart';
import 'package:goodaction/screen/post/post.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Get.to(() => Post());
        },
        backgroundColor: Colors.black, // Customize FAB color
        shape: const CircleBorder(), // Keeps FAB circular
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,




      bottomNavigationBar: Container(
        height: 70,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(), // Creates FAB cutout
          notchMargin: 10,
          child: Obx(
                () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomNavItem(
                    "assets/svgiocon/el_puzzle.svg", "Home", 0, controller),
                bottomNavItem(
                    "assets/svgiocon/frame.svg", "Initatives", 1, controller),
                const SizedBox(width: 40),
                bottomNavItem(
                    "assets/svgiocon/frame_1.svg", "Forum", 2, controller),
                bottomNavItem(
                    "assets/svgiocon/frame_2.svg", "Profile", 3, controller),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomNavItem(
      String iconPath, String label, int index, NavigationController controller) {
    bool isSelected = controller.selectedIndex.value == index;

    return GestureDetector(
      onTap: () {
        controller.selectedIndex.value = index;
      },
      child: SizedBox(
        height: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.black : Colors.grey, // Active = black, Inactive = grey
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screens = [
    const Dashboard(),
    InitiativesScreen(),
    Container(color: Colors.red),
    Container(color: Colors.orange),
  ];
}
