import 'package:flutter/material.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String title;
  final String description;
  final int maxLines;

  const ExpandableTextWidget({
    Key? key,
    required this.title,
    required this.description,
    this.maxLines = 5, // Default to showing 5 lines
  }) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            widget.title,
            style: AppTextStyle.inter(color: Colors.black, fontSize: 17.0, weight: FontWeight.w500),
          ),
          const SizedBox(height: 8),

          // Description with See More / See Less Button
          LayoutBuilder(
            builder: (context, constraints) {
              final textPainter = TextPainter(
                text: TextSpan(
                  text: widget.description,
                  style:AppTextStyle.inter(color: Colors.black.withValues(alpha: 0.6), fontSize: 14.0, weight: FontWeight.w500),
                ),
                maxLines: widget.maxLines,
                textDirection: TextDirection.ltr,
              )..layout(maxWidth: constraints.maxWidth);

              final isOverflowing = textPainter.didExceedMaxLines;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.description,
                    style: const TextStyle(fontSize: 16),
                    maxLines: isExpanded ? null : widget.maxLines,
                    overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                  ),
                  if (isOverflowing) // Show button only if text overflows
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Text(
                        isExpanded ? "See Less" : "See More",
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
