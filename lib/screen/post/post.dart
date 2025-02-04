import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';
import 'package:goodaction/screen/utils/device/device_utility.dart';
import '../utils/constants/app_text_style.dart';
import '../utils/constants/image_string.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GAppColors.backColor,
      bottomNavigationBar: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black.withValues(alpha: 0.6),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.photo,
                color: Colors.black.withValues(alpha: 0.6),
              ))
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: GAppColors.backColor,
        actions: [
          Container(
            height: 58,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset(
                    'assets/svgiocon/cross.svg',
                    width: 16,
                    height: 16,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withValues(alpha: 0.8),
                      // Active = black, Inactive = grey
                      BlendMode.srcIn,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'New Post',
                    style: AppTextStyle.inter(
                        color: Colors.black,
                        fontSize: 18.0,
                        weight: FontWeight.w500),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          'Post',
                          style: AppTextStyle.inter(
                              color: Colors.white,
                              fontSize: 14.0,
                              weight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12), // Rounded profile image
              child: Image.asset(
                GImages.profile, // Replace with GImages.profile
                height: 46,
                width: 46,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 300, child: Image(image: AssetImage(GImages.img)))
          ],
        ),
      ),
    );
  }
}
