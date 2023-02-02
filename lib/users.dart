import 'dart:convert';

import 'package:bits_intro/data.dart';
import 'package:bits_intro/profile_tile.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  Users({super.key});

  final List<Profile> _users = [
    Profile(
        id: 1,
        name: 'John Doe',
        userName: '@johnDoe',
        profileImage:
            'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg'),
    Profile(
        id: 1,
        name: 'John Doe',
        userName: '@johnDoe',
        profileImage:
            'https://img.freepik.com/free-photo/classic-portrait-silhouette-man_23-2149707006.jpg?size=626&ext=jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (context, index) {
            return ProfileTile(
              profileImage: _users[index].profileImage,
              name: _users[index].name,
              userName: _users[index].name,
            );
          },
        ));
  }

  // Container _buildProfile(BuildContext context, int index) {
  //   return Container(
  //     height: 80,
  //     width: MediaQuery.of(context).size.width,
  //     padding: const EdgeInsets.all(8),
  //     child: Row(children: [
  //       Image.network(_users[index].profileImage),
  //       const SizedBox(width: 8),
  //       Expanded(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Text(_users[index].name),
  //             const SizedBox(height: 8),
  //             Text(_users[index].userName)
  //           ],
  //         ),
  //       ),
  //       IconButton(onPressed: () {}, icon: const Icon(Icons.share))
  //     ]),
  //   );
  // }
}
