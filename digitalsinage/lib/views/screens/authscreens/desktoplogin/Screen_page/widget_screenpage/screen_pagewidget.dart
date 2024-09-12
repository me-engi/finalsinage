import 'package:digitalsinage/mainrepo/mainrepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'active_inactive.dart'; // Import active/inactive status widgets
import 'add_screen.dart'; // Import add screen button widget
import 'filter_and_viewswitcher.dart'; // Import filter and view switcher
import 'pagination_widget.dart'; // Import pagination widget
import 'screen_model.dart/model.dart'; // Import screen model
import 'widgetscreen_repo.dart/repo.dart'; // Import repository
import 'selected.dart'; // Import the Selected widget
import 'controller/controller.dart'; // Import ScreenController

class MainScreenone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the controller with the repository
    final ScreenController controller = Get.put(
      ScreenController(repository: ScreenRepository(API().sendRequest)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Screens'),
        backgroundColor: const Color(0xFF2D3142),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.isNotEmpty) {
          return Center(child: Text(controller.errorMessage.value));
        }

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Filter and View Switcher
                FilterAndViewSwitcher(
                  currentView: controller.currentView.value,
                  onViewChanged: (view) => controller.setView(view!),
                  onFilterChanged: (filter) => controller.setSortBy(filter!),
                  onDateRangeChanged: (range) => controller.setDateRange(range),
                ),

                SizedBox(height: 10.h),

                // Selected Filter/Sort Options
                Selected(
                  sortBy: controller.sortBy.value,
                  onSortChanged: (sortBy) => controller.setSortBy(sortBy),
                ),

                SizedBox(height: 20.h),

                // List of Screens
                if (controller.displayedScreens.isEmpty)
                  const Center(child: Text('No screens available'))
                else
                  Column(
                    children: controller.displayedScreens.map((screen) {
                      return ScreenTile(
                        screenId: screen.screenId,
                        status: screen.status,
                        associatedPlayer: screen.player,
                        lastUpdated: screen.lastUpdated.toString(),
                        location: screen.location,
                        tags: screen.tags.toString(),
                        scheduleContact: screen.scheduleContext,
                      );
                    }).toList(),
                  ),

                SizedBox(height: 20.h),

                // Add Screen Button
                AddScreenButton(
                  onPressed: () {
                    // Implement your add screen logic here
                  },
                ),

                SizedBox(height: 20.h),

                // Pagination Widget
                PaginationWidget(
                  currentPage: controller.currentPage.value,
                  totalPages: (controller.allScreens.length / controller.itemsPerPage).ceil(),
                  onPageChanged: (page) => controller.setPage(page),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
