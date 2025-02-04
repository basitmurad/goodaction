import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/image_string.dart';
import '../../utils/constants/sizes.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isExpanded = false; // State variable for expandable text

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Profile Row
          Row(
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

          SizedBox(height: GSizes.xs + 4),

          /// Expandable Text

          /// Image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              GImages.img, // Replace with GImages.img
              width: double.infinity,
              height: 192,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: GSizes.xs + 4),
          LayoutBuilder(
            builder: (context, constraints) {
              final text =
                  'Hello my name is Basit Murad, I am a software developer. '
                  'I am studying at Karakoram International University. '
                  'I am a student of BSC 54...';

              final textSpan = TextSpan(
                text: text,
                style: TextStyle(color: Colors.black, fontSize: 16),
              );

              final textPainter = TextPainter(
                text: textSpan,
                maxLines: 2,
                textDirection: TextDirection.ltr,
              );

              textPainter.layout(maxWidth: constraints.maxWidth);
              final isTextOverflowing = textPainter.didExceedMaxLines;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    maxLines: isExpanded ? null : 2,
                    overflow:
                    isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  if (isTextOverflowing)
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
                    )
                ],
              );
            },
          ),

          /// Like & Share Buttons
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // Like action
                },
                icon: Icon(Icons.favorite_border, color: Colors.black),
              ),
              Text(
                '34',
                style: AppTextStyle.inter(
                    color: Colors.black, fontSize: 14.0, weight: FontWeight.w400),
              ),
              SizedBox(
                width: 16,
              ),
              GestureDetector(
                onTap: () {
                  print("Clear ");
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
              SizedBox(
                width: 12,
              ),
              Text(
                '34',
                style: AppTextStyle.inter(
                    color: Colors.black, fontSize: 14.0, weight: FontWeight.w400),
              ),


            ],
          ),
          
          Container(height: 2,color: Colors.black,)
        ],
      ),
    );
  }
}
