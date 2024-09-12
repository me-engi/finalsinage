import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String imageUrl;

  const Avatar({
    Key? key,
    required this.size,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
        ),
        shape: const OvalBorder(),
      ),
    );
  }
}
