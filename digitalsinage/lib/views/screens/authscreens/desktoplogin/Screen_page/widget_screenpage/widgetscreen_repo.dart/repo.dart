import 'package:digitalsinage/constants/all_repo.dart';
import 'package:digitalsinage/mainrepo/mainrepo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:digitalsinage/constants/global.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/widget_screenpage/screen_model.dart/model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:digitalsinage/repo/api.dart';

class ScreenRepository {
  final API api = API();

  ScreenRepository(Dio sendRequest);

  // Fetch all screens
  Future<Screenmodel> fetchScreens() async {
    try {
      final response = await api.sendRequest.get(
        Global.hostUrl,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return Screenmodel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: "Failed to load screens",
          backgroundColor: Colors.red,
          toastLength: Toast.LENGTH_LONG,
        );
        rethrow;
      }
      rethrow;
    }
  }

  // Add a new screen
  Future<void> addScreen(Screen screen) async {
    try {
      await api.sendRequest.post(
        Global.hostUrl,
        data: screen.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: "Failed to add screen",
          backgroundColor: Colors.red,
          toastLength: Toast.LENGTH_LONG,
        );
        rethrow;
      }
      rethrow;
    }
  }

  // Update an existing screen
  Future<void> updateScreen(String screenId, Screen screen) async {
    try {
      await api.sendRequest.put(
        '${Global.hostUrl}/$screenId',
        data: screen.toJson(),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: "Failed to update screen",
          backgroundColor: Colors.red,
          toastLength: Toast.LENGTH_LONG,
        );
        rethrow;
      }
      rethrow;
    }
  }

  // Delete a screen
  Future<void> deleteScreen(String screenId) async {
    try {
      await api.sendRequest.delete(
        '${Global.hostUrl}/$screenId',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        Fluttertoast.showToast(
          msg: "Failed to delete screen",
          backgroundColor: Colors.red,
          toastLength: Toast.LENGTH_LONG,
        );
        rethrow;
      }
      rethrow;
    }
  }
}
