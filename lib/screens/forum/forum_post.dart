import 'package:flutter/material.dart';

class ForumPost extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String content;
  final int likes;
  final int comments;

  const ForumPost({
    required this.title,
    required this.author,
    required this.date,
    required this.content,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2, // Adjusted to fit the screen
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8.0),
            Text(
              '$author on $date',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 8.0),
            Text(
              content,
              maxLines: 5, // Adjusted to fit the screen
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.thumb_up),
                Text('$likes'),
                SizedBox(width: 8.0),
                Icon(Icons.comment),
                Text('$comments'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
