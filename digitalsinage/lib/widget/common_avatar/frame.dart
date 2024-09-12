import 'package:digitalsinage/widget/common_avatar/avatar.dart';
import 'package:flutter/material.dart';
import 'badge_overlay.dart'; // Import the BadgeOverlay widget

class Frame extends StatelessWidget {
  final String imageUrl;
  final Color badgeColor;

  const Frame({
    Key? key,
    required this.imageUrl,
    required this.badgeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 105,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BadgeOverlay(
                badgeSize: 7.01,
                avatarSize: 24.54,
                imageUrl: imageUrl,
                badgeColor: badgeColor,
              ),
              const SizedBox(width: 20.76),
              Avatar(
                size: 60,
                imageUrl: imageUrl,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
