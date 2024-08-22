import 'package:flutter/material.dart';

class FilterAndViewSwitcher extends StatelessWidget {
  final String currentView;
  final ValueChanged<String?> onViewChanged; // Change to ValueChanged<String?> to allow null values
  final ValueChanged<String?> onFilterChanged; // Change to ValueChanged<String?> to allow null values

  FilterAndViewSwitcher({
    required this.currentView,
    required this.onViewChanged,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropdownButton<String>(
          value: currentView,
          items: ['List', 'Grid'].map((view) {
            return DropdownMenuItem<String>(
              value: view,
              child: Text(view),
            );
          }).toList(),
          onChanged: onViewChanged, // No need for `!` here
        ),
        DropdownButton<String>(
          items: ['Indoor', 'Outdoor'].map((filter) {
            return DropdownMenuItem<String>(
              value: filter,
              child: Text(filter),
            );
          }).toList(),
          onChanged: onFilterChanged, // No need for `!` here
        ),
      ],
    );
  }
}
