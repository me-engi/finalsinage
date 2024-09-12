import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screen_model.dart/model.dart'; // Import your model file

class ScreenTile extends StatelessWidget {
  final String screenId;
  final String status;
  final String associatedPlayer;
  final String lastUpdated;
  final String location;
  final String tags;
  final String scheduleContact;

  const ScreenTile({
    Key? key,
    required this.screenId,
    required this.status,
    required this.associatedPlayer,
    required this.lastUpdated,
    required this.location,
    required this.tags,
    required this.scheduleContact,
  }) : super(key: key);

  Color getStatusColor(String status) {
    switch (status) {
      case 'active':
        return Color(0xFF2D3142); // Dark Blue
      case 'inactive':
        return Color(0xFFFF6F6F); // Light Red
      case 'scheduled':
        return Color(0xFF6F6F6F); // Light Gray
      default:
        return Color(0xFF2D3142); // Default color
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = getStatusColor(status);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: statusColor),
        color: statusColor.withOpacity(0.1), // Light background color
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 27.0,
                height: 37.0,
                clipBehavior: Clip.antiAlias,
                child: SvgPicture.asset(
                  'assets/icons/one-drive.svg', 
                  color: statusColor, // Set icon color based on status
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  screenId,
                  style: TextStyle(color: statusColor, fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            'Status: $status',
            style: TextStyle(color: statusColor, fontSize: 14.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'Associated Player: $associatedPlayer',
            style: TextStyle(color: Colors.black87, fontSize: 14.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'Last Updated: $lastUpdated',
            style: TextStyle(color: Colors.black54, fontSize: 14.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'Location: $location',
            style: TextStyle(color: Colors.black54, fontSize: 14.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'Tags: $tags',
            style: TextStyle(color: Colors.black54, fontSize: 14.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'Schedule Contact: $scheduleContact',
            style: TextStyle(color: Colors.black54, fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
