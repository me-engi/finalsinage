import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenTile extends StatelessWidget {
  final String screenId;
  final String status;

  ScreenTile({required this.screenId, required this.status});

  Color getStatusColor() {
    switch (status) {
      case 'active':
        return Color(0xFF2D3142); // Light Green
      case 'inactive':
        return Color(0xFFFF6F6F); // Light Red
      case 'scheduled':
        return Color(0xFF6F6F6F); // Light Blue
      default:
        return Color(0xFF2D3142); // Default color
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF2D3142)),
        color: getStatusColor(),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 27,
            height: 37,
            clipBehavior: Clip.antiAlias,
            // child: FlutterLogo(),
          ),
          SizedBox(width: 10),
          Text(
            screenId,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
