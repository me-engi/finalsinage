import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/widget_screenpage/widgetscreen_repo.dart/repo.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/widget_screenpage/screen_model.dart/model.dart';

class ScreenController extends GetxController {
  final ScreenRepository repository;

  // Observable properties
  var allScreens = <Screen>[].obs; // Holds all fetched screens
  var displayedScreens = <Screen>[].obs; // Screens to display on the current page
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var currentPage = 1.obs;
  var itemsPerPage = 5; // Number of items per page

  // Sorting, view, and date range settings
  var sortBy = 'Date'.obs; // Default sorting by date
  var currentView = 'Grid'.obs; // Default view mode
  var selectedDateRange = Rxn<DateTimeRange>(); // Nullable DateTimeRange

  ScreenController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    fetchScreens();
  }

  // Fetch screens from the repository
  void fetchScreens() async {
    isLoading.value = true;
    try {
      final screenModel = await repository.fetchScreens();
      allScreens.value = screenModel.screens;

      applyFiltersAndSort(); // Apply filters and sorting
      paginateScreens(); // Apply pagination after sorting
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  // Apply sorting and filtering based on the selected options
  void applyFiltersAndSort() {
    // Sort screens by the selected criteria (default is by date)
    if (sortBy.value == 'Date') {
      allScreens.sort((a, b) => b.lastUpdated.compareTo(a.lastUpdated));
    } else if (sortBy.value == 'Name') {
      allScreens.sort((a, b) => a.player.compareTo(b.player)); // Example for name sorting
    }

    // Apply date range filter if selected
    if (selectedDateRange.value != null) {
      DateTime startDate = selectedDateRange.value!.start;
      DateTime endDate = selectedDateRange.value!.end;
      allScreens.value = allScreens.where((screen) {
        return screen.lastUpdated.isAfter(startDate) && screen.lastUpdated.isBefore(endDate);
      }).toList();
    }
  }

  // Paginate screens based on the current page
  void paginateScreens() {
    int startIndex = (currentPage.value - 1) * itemsPerPage;
    int endIndex = startIndex + itemsPerPage;
    displayedScreens.value = allScreens.sublist(
      startIndex,
      endIndex > allScreens.length ? allScreens.length : endIndex,
    );
  }

  // Set the current page and refresh the displayed screens
  void setPage(int page) {
    if (page < 1 || page > (allScreens.length / itemsPerPage).ceil()) return;
    currentPage.value = page;
    paginateScreens();
  }

  // Set the sorting criteria and refresh the displayed screens
  void setSortBy(String sortByValue) {
    sortBy.value = sortByValue;
    applyFiltersAndSort(); // Apply the new sorting criteria
    paginateScreens(); // Update pagination after sorting
  }

  // Set the view mode (e.g., grid or list)
  void setView(String view) {
    currentView.value = view;
  }

  // Set the date range for filtering screens
  void setDateRange(DateTimeRange? range) {
    selectedDateRange.value = range;
    applyFiltersAndSort(); // Apply the new date range filter
    paginateScreens(); // Update pagination after filtering
  }

  // Add a new screen
  void addScreen(Screen screen) async {
    try {
      await repository.addScreen(screen);
      allScreens.add(screen);

      applyFiltersAndSort(); // Apply filters and sorting after adding
      paginateScreens(); // Update pagination after adding
    } catch (e) {
      errorMessage.value = e.toString();
    }
  }

  // Update an existing screen
  void updateScreen(String screenId, Screen updatedScreen) async {
    try {
      await repository.updateScreen(screenId, updatedScreen);
      final index = allScreens.indexWhere((screen) => screen.screenId == screenId);
      if (index != -1) {
        allScreens[index] = updatedScreen;

        applyFiltersAndSort(); // Apply filters and sorting after updating
        paginateScreens(); // Update pagination after updating
      }
    } catch (e) {
      errorMessage.value = e.toString();
    }
  }

  // Delete a screen
  void deleteScreen(String screenId) async {
    try {
      await repository.deleteScreen(screenId);
      allScreens.removeWhere((screen) => screen.screenId == screenId);

      applyFiltersAndSort(); // Apply filters and sorting after deleting
      paginateScreens(); // Update pagination after deleting
    } catch (e) {
      errorMessage.value = e.toString();
    }
  }
}
