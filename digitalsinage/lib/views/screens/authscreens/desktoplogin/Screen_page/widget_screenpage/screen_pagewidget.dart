import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // For responsive design

import 'active_inactive.dart';
import 'add_screen.dart';
import 'filter_and_viewswitcher.dart';
import 'pagination_widget.dart';

class MainScreen extends StatefulWidget {
  final List<Map<String, String>> screens; // List of screens with ID and status
  final int initialPage;
  final int totalPages;
  final String initialView;

  const MainScreen({
    Key? key,
    required this.screens,
    required this.initialPage,
    required this.totalPages,
    required this.initialView,
  }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _currentPage;
  late String _currentView;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
    _currentView = widget.initialView;
  }

  void _handlePageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _handleViewChanged(String? view) {
    if (view != null) {
      setState(() {
        _currentView = view;
      });
    }
  }

  void _handleFilterChanged(String? filter) {
    if (filter != null) {
      // Handle filter change logic here
      // This might involve updating the state or making network requests
    }
  }

  void _handleAddScreen() {
    // Handle add screen logic here
    // This might involve navigating to a new screen or opening a dialog
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // Design size for responsiveness
      minTextAdapt: true,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Main Screen'),
            backgroundColor: Color(0xFF2D3142),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: FilterAndViewSwitcher(
                    currentView: _currentView,
                    onViewChanged: _handleViewChanged,
                    onFilterChanged: _handleFilterChanged,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: widget.screens.map((screen) {
                      return ScreenTile(
                        screenId: screen['id']!,
                        status: screen['status']!,
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20.h),
                AddScreenButton(onPressed: _handleAddScreen),
                SizedBox(height: 20.h),
                PaginationWidget(
                  currentPage: _currentPage,
                  totalPages: widget.totalPages,
                  onPageChanged: _handlePageChanged,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
