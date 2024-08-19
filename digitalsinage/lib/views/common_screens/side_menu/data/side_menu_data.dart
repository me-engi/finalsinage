import 'package:digitalsinage/assets/icons.dart';
import 'package:digitalsinage/views/common_screens/side_menu/model/side_menumodel.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(icon: CustomIcons.screens,size: CustomIcons.iconSizeSmall, title: 'Screens' , onTap: () {
      // Action for Screens
      print('');
    }),
    MenuModel(icon: CustomIcons.media,size: CustomIcons.iconSizeSmall, title:  'Media', onTap: () {
      // Action for Media
      print('');
    }),
    MenuModel(icon: CustomIcons.compose,size: CustomIcons.iconSizeSmall, title: 'Compose', onTap: () {
      // Action for Compose
      print('');
    }),
    MenuModel(icon: CustomIcons.schedule,size: CustomIcons.iconSizeSmall, title: 'Schedule', onTap: () {
      // Action for Schedule
      print('');
    }),
    MenuModel(icon: CustomIcons.apps,size: CustomIcons.iconSizeSmall, title: 'Apps', onTap: () {
      // Action for Apps
      print('');
    }),
    MenuModel(icon: CustomIcons.analytics,size: CustomIcons.iconSizeSmall, title: 'Analytics', onTap: () {
      // Action for Analytics
      print('');
    }),
    MenuModel(icon: CustomIcons.settings,size: CustomIcons.iconSizeSmall, title: 'Setting', onTap: () {
      // Action for Setting
      print('');
    }),
  ];
}