// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:goodaction/screen/utils/constants/app_text_style.dart';
// // import 'package:goodaction/screen/utils/constants/colors.dart';
// //
// // import '../../utils/constants/image_string.dart';
// // import '../../utils/constants/sizes.dart';
// // import 'completed_initiatives.dart';
// // import 'ongoing_initiatives.dart';
// //
// // class InitiativesScreen extends StatefulWidget {
// //   const InitiativesScreen({super.key});
// //
// //   @override
// //   State<InitiativesScreen> createState() => _InitiativesScreenState();
// // }
// //
// // class _InitiativesScreenState extends State<InitiativesScreen>
// //     with SingleTickerProviderStateMixin {
// //   late TabController _tabController;
// //   int _selectedIndex = 0;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(length: 2, vsync: this);
// //     _tabController.addListener(() {
// //       setState(() {
// //         _selectedIndex = _tabController.index;
// //       });
// //     });
// //   }
// //
// //   @override
// //   void dispose() {
// //     _tabController.dispose();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: GAppColors.backColor,
// //       appBar: AppBar(
// //         title: Text(
// //           "Initiatives",
// //           style: AppTextStyle.inter(
// //             color: Colors.black,
// //             fontSize: 18.0,
// //             weight: FontWeight.w600,
// //           ),
// //         ),
// //         backgroundColor: GAppColors.backColor,
// //         elevation: 2.0,
// //         bottom: TabBar(
// //           controller: _tabController,
// //           indicatorColor: Colors.transparent, // No default indicator
// //           tabs: [
// //             _buildTab(
// //                 index: 0,
// //                 iconPath: 'assets/svgiocon/tab2.svg',
// //                 text: 'Fundraisers'),
// //             _buildTab(
// //                 index: 1,
// //                 iconPath: 'assets/svgiocon/tab1.svg',
// //                 text: 'Volunteers'),
// //           ],
// //         ),
// //       ),
// //       body: PageView(
// //         controller: PageController(),
// //         onPageChanged: (index) {
// //           setState(() {
// //             _selectedIndex = index;
// //             _tabController.index = index;
// //           });
// //         },
// //         children: const [
// //           OngoingInitiatives(),
// //           CompletedInitiatives(),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget _buildTab(
// //       {required int index, required String iconPath, required String text}) {
// //     bool isSelected = _selectedIndex == index;
// //     Color bgColor = isSelected ? Colors.black : Colors.transparent;
// //     Color iconTextColor = isSelected ? Colors.white : Colors.grey;
// //
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 6.0),
// //       child: Container(
// //         decoration: BoxDecoration(
// //           color: bgColor,
// //           borderRadius: BorderRadius.circular(32),
// //         ),
// //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //         child: Row(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             SvgPicture.asset(
// //               iconPath,
// //               width: 24,
// //               height: 24,
// //               colorFilter: ColorFilter.mode(iconTextColor, BlendMode.srcIn),
// //             ),
// //             const SizedBox(width: 8),
// //             Text(
// //               text,
// //               style: AppTextStyle.inter(
// //                   color: iconTextColor,
// //                   fontSize: 14.0,
// //                   weight: FontWeight.w400),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// //
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:goodaction/screen/utils/constants/app_text_style.dart';
// import 'package:goodaction/screen/utils/constants/colors.dart';
//
// import '../../utils/constants/image_string.dart';
// import '../../utils/constants/sizes.dart';
// import 'completed_initiatives.dart';
// import 'ongoing_initiatives.dart';
//
// class InitiativesScreen extends StatefulWidget {
//   const InitiativesScreen({super.key});
//
//   @override
//   State<InitiativesScreen> createState() => _InitiativesScreenState();
// }
//
// class _InitiativesScreenState extends State<InitiativesScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   int _selectedIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//     _tabController.addListener(() {
//       setState(() {
//         _selectedIndex = _tabController.index;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: GAppColors.backColor,
//       appBar: AppBar(
//         title: Text(
//           "Initiatives",
//           style: AppTextStyle.inter(
//             color: Colors.black,
//             fontSize: 18.0,
//             weight: FontWeight.w600,
//           ),
//         ),
//         backgroundColor: GAppColors.backColor,
//         elevation: 2.0,
//         bottom: TabBar(
//           controller: _tabController,
//           indicatorColor: Colors.transparent, // No default indicator
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//           tabs: [
//             _buildTab(
//                 index: 0,
//                 iconPath: 'assets/svgiocon/tab2.svg',
//                 text: 'Fundraisers'),
//             _buildTab(
//                 index: 1,
//                 iconPath: 'assets/svgiocon/tab1.svg',
//                 text: 'Volunteers'),
//           ],
//         ),
//       ),
//       body: PageView(
//         controller: PageController(),
//         onPageChanged: (index) {
//           setState(() {
//             _selectedIndex = index;
//             _tabController.index = index;  // Sync TabController with PageView
//           });
//         },
//         children: const [
//           OngoingInitiatives(),
//           CompletedInitiatives(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildTab(
//       {required int index, required String iconPath, required String text}) {
//     bool isSelected = _selectedIndex == index;
//     Color bgColor = isSelected ? Colors.black : Colors.transparent;
//     Color iconTextColor = isSelected ? Colors.white : Colors.grey;
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: bgColor,
//           borderRadius: BorderRadius.circular(32),
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             SvgPicture.asset(
//               iconPath,
//               width: 24,
//               height: 24,
//               colorFilter: ColorFilter.mode(iconTextColor, BlendMode.srcIn),
//             ),
//             const SizedBox(width: 8),
//             Text(
//               text,
//               style: AppTextStyle.inter(
//                   color: iconTextColor,
//                   fontSize: 14.0,
//                   weight: FontWeight.w400),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';

import '../../utils/constants/image_string.dart';
import '../../utils/constants/sizes.dart';
import 'completed_initiatives.dart';
import 'ongoing_initiatives.dart';

class InitiativesScreen extends StatefulWidget {
  const InitiativesScreen({super.key});

  @override
  State<InitiativesScreen> createState() => _InitiativesScreenState();
}

class _InitiativesScreenState extends State<InitiativesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController; // PageController added
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(); // Initialize PageController

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
        // Update the PageView when the tab is tapped
        _pageController.jumpToPage(_selectedIndex);
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose(); // Dispose PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GAppColors.backColor,
      appBar: AppBar(
        title: Text(
          "Initiatives",
          style: AppTextStyle.inter(
            color: Colors.black,
            fontSize: 18.0,
            weight: FontWeight.w600,
          ),
        ),
        backgroundColor: GAppColors.backColor,
        elevation: 2.0,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent, // No default indicator
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            // Change the page when a tab is clicked
            _pageController.jumpToPage(index);
          },
          tabs: [
            _buildTab(
                index: 0,
                iconPath: 'assets/svgiocon/tab2.svg',
                text: 'Fundraisers'),
            _buildTab(
                index: 1,
                iconPath: 'assets/svgiocon/tab1.svg',
                text: 'Volunteers'),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController, // Assign the PageController
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
            _tabController.index = index;  // Sync TabController with PageView
          });
        },
        children: const [
          OngoingInitiatives(),
          CompletedInitiatives(),
        ],
      ),
    );
  }

  Widget _buildTab(
      {required int index, required String iconPath, required String text}) {bool isSelected = _selectedIndex == index;Color bgColor = isSelected ? Colors.black : Colors.transparent;Color iconTextColor = isSelected ? Colors.white : Colors.grey;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(iconTextColor, BlendMode.srcIn),
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: AppTextStyle.inter(
                  color: iconTextColor,
                  fontSize: 14.0,
                  weight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
