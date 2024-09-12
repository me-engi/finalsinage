// To parse this JSON data, do
//
//     final screenmodel = screenmodelFromJson(jsonString);

import 'dart:convert';

Screenmodel screenmodelFromJson(String str) => Screenmodel.fromJson(json.decode(str));

String screenmodelToJson(Screenmodel data) => json.encode(data.toJson());

class Screenmodel {
    List<Screen> screens;

    Screenmodel({
        required this.screens,
    });

    factory Screenmodel.fromJson(Map<String, dynamic> json) => Screenmodel(
        screens: List<Screen>.from(json["screens"].map((x) => Screen.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "screens": List<dynamic>.from(screens.map((x) => x.toJson())),
    };
}

class Screen {
    String screenId;
    String player;
    DateTime lastUpdated;
    String location;
    List<String> tags;
    String scheduleContext;
    String status;

    Screen({
        required this.screenId,
        required this.player,
        required this.lastUpdated,
        required this.location,
        required this.tags,
        required this.scheduleContext,
        required this.status,
    });

    factory Screen.fromJson(Map<String, dynamic> json) => Screen(
        screenId: json["screenId"],
        player: json["player"],
        lastUpdated: DateTime.parse(json["lastUpdated"]),
        location: json["location"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        scheduleContext: json["scheduleContext"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "screenId": screenId,
        "player": player,
        "lastUpdated": lastUpdated.toIso8601String(),
        "location": location,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "scheduleContext": scheduleContext,
        "status": status,
    };
}
