import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 120,
      backgroundImage: AssetImage('assets/profile_pic.jpg'),
    );
  }
}
