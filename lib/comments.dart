import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: CommunityScreen(),
      ),
    );
  }
}

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            children: [
              const PostCard(
                avatar: 'images/user1.jpg',
                username: 'Pigeon Car',
                time: '3 hrs ago',
                content:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 12,
                comments: 2,
                userLiked: true,
                userCommented: false,
              ),
              Divider(color: Colors.grey[300], thickness: 1, height: 1),
              const PostCard(
                avatar: 'images/user2.jpg',
                username: 'Pigeon Car',
                time: '1 hr ago',
                content:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 12,
                comments: 2,
                userLiked: true,
                userCommented: false,
              ),
              Divider(color: Colors.grey[300], thickness: 1, height: 1),
              const PostCard(
                avatar: 'images/user3.jpg',
                username: 'Pigeon Car',
                time: '2 min ago',
                content:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 12,
                comments: 2,
                userLiked: true,
                userCommented: false,
              ),
              Divider(color: Colors.grey[300], thickness: 1, height: 1),
              const PostCard(
                avatar: 'images/user4.jpg',
                username: 'Pigeon Car',
                time: '3 hrs ago',
                content:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 12,
                comments: 2,
                userLiked: true,
                userCommented: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PostCard extends StatelessWidget {
  final String avatar;
  final String username;
  final String time;
  final String content;
  final int likes;
  final int comments;
  final bool userLiked;
  final bool userCommented;

  const PostCard({super.key, 
    required this.avatar,
    required this.username,
    required this.time,
    required this.content,
    required this.likes,
    required this.comments,
    required this.userLiked,
    required this.userCommented,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatar),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.share, color: Colors.grey),
                onPressed: () {
                  // Implement share functionality here
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(content),
          const SizedBox(height: 10),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: userLiked ? Colors.orange : Colors.grey,
                  ),
                  const SizedBox(width: 4),
                  Text(likes.toString()),
                ],
              ),
              const SizedBox(width: 20),
              Row(
                children: [
                  Icon(
                    Icons.comment,
                    color: userCommented ? Colors.orange : Colors.grey,
                  ),
                  const SizedBox(width: 4),
                  Text(comments.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
