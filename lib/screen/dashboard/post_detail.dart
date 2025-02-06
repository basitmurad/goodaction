import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:goodaction/screen/utils/device/device_utility.dart';
import '../utils/constants/app_text_style.dart';
import '../utils/constants/image_string.dart';
import '../utils/constants/sizes.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({super.key});

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  bool isExpanded = false; // State variable for expandable text

  // Sample comment data
  List<Map<String, dynamic>> comments = [
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'John Doe',
      'comment': 'Great post!',
      'likes': 10,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'Jane Smith',
      'comment':
          'I totally agree with you!I totally agree with you!I totally agree with you!',
      'likes': 5,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'Alex Johnson',
      'comment': 'Interesting thoughts!',
      'likes': 8,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'John Doe',
      'comment': 'Great post!',
      'likes': 10,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'Jane Smith',
      'comment':
          'I totally agree with you!I totally agree with you!I totally agree with you!',
      'likes': 5,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'Alex Johnson',
      'comment': 'Interesting thoughts!',
      'likes': 8,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'John Doe',
      'comment': 'Great post!',
      'likes': 10,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'Jane Smith',
      'comment':
          'I totally agree with you!I totally agree with you!I totally agree with you!',
      'likes': 5,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'Alex Johnson',
      'comment': 'Interesting thoughts!',
      'likes': 8,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'John Doe',
      'comment': 'Great post!',
      'likes': 10,
      'liked': false
    },
    {
      'profile': GImages.profile, // Replace with actual image path
      'username': 'Alex Johnson',
      'comment': 'Interesting thoughts!',
      'likes': 8,
      'liked': false
    },
  ];

  TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: GDeviceUtils.getAppBarHeight() -20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(Icons.arrow_back_ios_new_outlined, size: 18),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: GSizes.spaceBtwInputFields - 6),

              /// Post Details
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            GImages.profile, // Replace with actual image path
                            height: 46,
                            width: 46,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Basit Murad',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '2 hours ago',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: GSizes.spaceBtwInputFields),

                    /// Post Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        GImages.img, // Replace with actual image path
                        width: double.infinity,
                        height: 192,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: GSizes.xs + 4),

                    /// Post Description
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final text =
                            'Hello, my name is Basit Murad. I am a software developer at Karakoram International University. '
                            'I am studying BSC 54...';

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              maxLines: isExpanded ? null : 2,
                              overflow: isExpanded
                                  ? TextOverflow.visible
                                  : TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            GestureDetector(
                              child: Text(
                                isExpanded ? "See Less" : "See More",
                                style: AppTextStyle.inter(
                                    color: Colors.green,
                                    fontSize: 16.0,
                                    weight: FontWeight.w400),
                              ),
                              onTap: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                            ),
                          ],
                        );
                      },
                    ),

                    /// Like & Comment Buttons
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Like action
                          },
                          icon:
                              Icon(Icons.favorite_border, color: Colors.black),
                        ),
                        Text(
                          '34 likes',
                          style: AppTextStyle.inter(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14.0,
                            weight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            print("Clear");
                          },
                          child: SvgPicture.asset(
                            "assets/svgiocon/message.svg",
                            width: 24,
                            height: 24,
                            colorFilter: ColorFilter.mode(
                              Colors.black, // Active = black, Inactive = grey
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          '${comments.length} comments',
                          style: AppTextStyle.inter(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14.0,
                            weight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.black),


                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      // Disable internal scroll
                      shrinkWrap: true,
                      itemCount: comments.length,
                      itemBuilder: (context, index) {
                        final comment = comments[index];

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          // Optional padding for each comment
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Profile image aligned at the top left
                              ClipOval(
                                child: Image.asset(
                                  comment['profile'],
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 8), // Spacing between image and text
                              // Column for the rest of the comment content
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      comment['username'],
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    // Spacing between username and comment
                                    Text(comment['comment']),
                                    SizedBox(height: 8),
                                    // Optional spacing between comment and like section
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            comment['liked']
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color: comment['liked']
                                                ? Colors.red
                                                : Colors.grey,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              comments[index]['liked'] =
                                              !comments[index]['liked'];
                                              if (comments[index]['liked']) {
                                                comments[index]['likes']++;
                                              } else {
                                                comments[index]['likes']--;
                                              }
                                            });
                                          },
                                        ),
                                        Text('${comment['likes']}'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    )

                  ],
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                GImages.profile,
                // Replace with the current user's profile image
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child:
              TextField(
                controller: _commentController,
                decoration: InputDecoration(
                  hintText: 'write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white.withValues(alpha: 0.4),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send, color: Colors.green),
              onPressed: () {
                // Add comment action
                if (_commentController.text.isNotEmpty) {
                  setState(() {
                    comments.add({
                      'profile': GImages.profile,
                      'username': 'You',
                      'comment': _commentController.text,
                      'likes': 0,
                      'liked': false
                    });
                    _commentController.clear();
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
