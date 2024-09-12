import 'package:digitalsinage/widget/common_avatar/badge.dart';
import 'package:flutter/material.dart';
// Import the Badge widget
import 'avatar.dart'; // Import the Avatar widget

class BadgeOverlay extends StatelessWidget {
  final double badgeSize;
  final double avatarSize;
  final String imageUrl;
  final Color badgeColor;

  const BadgeOverlay({
    Key? key,
    required this.badgeSize,
    required this.avatarSize,
    required this.imageUrl,
    required this.badgeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: avatarSize,
      height: avatarSize,
      child: Stack(
        children: [
          Avatar(
            size: avatarSize,
            imageUrl: imageUrl,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Badgee(
              size: badgeSize,
              color: badgeColor,
            ),
          ),
        ],
      ),
    );
  }
}
