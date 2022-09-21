// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.avatar,
        this.time,
        this.name,
        this.photo,
        this.notifctn
    });

    String? avatar;
    String? time;
    String? name;
    String? photo;
    String? notifctn;

    factory User.fromJson(Map<String, dynamic> json) => User(
        avatar: json["avatar"],
        time: json["time"],
        name: json["name"],
        photo: json["photo"],
        notifctn: json["notifctn"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "time": time,
        "name": name,
        "photo": photo,
        "notifctn": notifctn,
    };
}
