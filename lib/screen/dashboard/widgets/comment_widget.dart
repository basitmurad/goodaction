import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentWidget extends StatefulWidget {
  final List<Map<String, dynamic>> comments;

  CommentWidget({required this.comments});

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  List<Map<String, dynamic>> comments = [];

  @override
  void initState() {
    super.initState();
    comments = widget.comments;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(), // Disable internal scroll
      shrinkWrap: true,
      itemCount: comments.length,
      itemBuilder: (context, index) {
        final comment = comments[index];
        bool isExpanded = comment['isExpanded'] ?? false;

        return ListTile(
          leading: ClipOval(
            child: Image.asset(
              comment['profile'],
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            comment['username'],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comment['comment'],
                maxLines: isExpanded ? null : 2, // Toggle between expanded and truncated
                overflow: isExpanded ? null : TextOverflow.ellipsis, // Truncate when not expanded
                style: TextStyle(fontSize: 14),
              ),
              if (!isExpanded)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      comment['isExpanded'] = true; // Expand the comment
                    });
                  },
                  child: Text(
                    'See More',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                ),
              if (isExpanded)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      comment['isExpanded'] = false; // Collapse the comment
                    });
                  },
                  child: Text(
                    'See Less',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(
                  comment['liked'] ? Icons.favorite : Icons.favorite_border,
                  color: comment['liked'] ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    comment['liked'] = !comment['liked'];
                    if (comment['liked']) {
                      comment['likes']++;
                    } else {
                      comment['likes']--;
                    }
                  });
                },
              ),
              Text('${comment['likes']}'),
            ],
          ),
        );
      },
    );
  }
}



