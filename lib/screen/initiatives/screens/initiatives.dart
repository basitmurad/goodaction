import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';

import '../../utils/constants/image_string.dart';
import '../../utils/constants/sizes.dart';

class InitiativesScreen extends StatefulWidget {
  const InitiativesScreen({super.key});

  @override
  State<InitiativesScreen> createState() => _InitiativesScreenState();
}

class _InitiativesScreenState extends State<InitiativesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
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
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          final slideDirection =
              _selectedIndex == 0 ? const Offset(-1, 0) : const Offset(1, 0);
          return SlideTransition(
            position: Tween<Offset>(
              begin: slideDirection,
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
        child: IndexedStack(
          key: ValueKey<int>(_selectedIndex),
          index: _selectedIndex,
          children: const [
            OngoingInitiatives(),
            CompletedInitiatives(),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(
      {required int index, required String iconPath, required String text}) {
    bool isSelected = _selectedIndex == index;
    Color bgColor = isSelected ? Colors.black : Colors.transparent;
    Color iconTextColor = isSelected ? Colors.white : Colors.grey;

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

// Dummy Screens for Tabs
class OngoingInitiatives extends StatelessWidget {
  const OngoingInitiatives({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
      child:
      Container(
        height: 400,
        decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.09),

            borderRadius: BorderRadius.circular(16)

        ),
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Profile Row
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    GImages.profile, // Replace with GImages.profile
                    height: 48,
                    width: 48,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Learning Light Foundation',
                        style: AppTextStyle.inter(color: Colors.black, fontSize: 16.0, weight: FontWeight.w600)
                    ),
                    SizedBox(height: 8),
                    Text(
                        'Toronto, Canada',
                        style: AppTextStyle.inter(color: Colors.black, fontSize: 12.0, weight: FontWeight.w400)
                    ),
                  ],
                )
              ],
            ),

            SizedBox(height: GSizes.md + 4),

            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                GImages.img, // Replace with GImages.img
                width: double.infinity,
                height: 192,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: GSizes.md + 4),

            Text(
              'Providing free learning materials to schools in underserved communities.',
              style: AppTextStyle.inter(
                color: Colors.black,
                fontSize: 14.0,
                weight: FontWeight.w600,
              ),
            ),

            SizedBox(height: GSizes.md ),



            /// Raised Amount & Goal
            Row(
              children: [
                Text(
                  "Raised: \$${345}", // Raised amount
                  style: AppTextStyle.inter(
                    color: Colors.black,
                    fontSize: 14.0,
                    weight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  "Goal: \$${1000}", // Goal amount
                  style: AppTextStyle.inter(
                    color: Colors.black,
                    fontSize: 14.0,
                    weight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height: GSizes.md ),

            /// Progress Bar
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: 345 / 1000, // Raised amount / Goal
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                minHeight: 8,
              ),
            ),
            SizedBox(height: GSizes.md -6),


          ],
        ),
      ),
    );
  }
}

class CompletedInitiatives extends StatelessWidget {
  const CompletedInitiatives({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
      child:
      Container(
        height: 400,
        decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.09),
          borderRadius: BorderRadius.circular(16)


        ),
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Profile Row
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    GImages.profile, // Replace with GImages.profile
                    height: 48,
                    width: 48,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Learning Light Foundation',
                      style: AppTextStyle.inter(color: Colors.black, fontSize: 16.0, weight: FontWeight.w600)
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Toronto, Canada',
                        style: AppTextStyle.inter(color: Colors.black, fontSize: 12.0, weight: FontWeight.w400)
                    ),
                  ],
                )
              ],
            ),

            SizedBox(height: GSizes.md + 4),

            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                GImages.img, // Replace with GImages.img
                width: double.infinity,
                height: 192,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: GSizes.md + 4),

            Text(
              'Providing free learning materials to schools in underserved communities.',
              style: AppTextStyle.inter(
                color: Colors.black,
                fontSize: 14.0,
                weight: FontWeight.w600,
              ),
            ),

            SizedBox(height: GSizes.md ),



            /// Raised Amount & Goal
            Row(
              children: [
                Text(
                  "Raised: \$${345}", // Raised amount
                  style: AppTextStyle.inter(
                    color: Colors.black,
                    fontSize: 14.0,
                    weight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  "Goal: \$${1000}", // Goal amount
                  style: AppTextStyle.inter(
                    color: Colors.black,
                    fontSize: 14.0,
                    weight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            SizedBox(height: GSizes.md ),

            /// Progress Bar
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: 345 / 1000, // Raised amount / Goal
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                minHeight: 8,
              ),
            ),
            SizedBox(height: GSizes.md -6),




          ],
        ),
      ),
    );
  }
}
