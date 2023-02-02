import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String profileImage;
  final String name;
  final String userName;

  const ProfileTile({
    required this.profileImage,
    required this.name,
    required this.userName,
    super.key
    });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        Image.network(profileImage),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(name), const SizedBox(height: 8), Text(userName)],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ]),
    );
  }
}
