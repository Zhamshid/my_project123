import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? uid;
  final String? userName;
  final String? phone;
  final String? fcmToken;
  final String? gender;
  final String? city;
  final DateTime? dateOfBirth;
  final List<UserImage>? images;
  final List<String>? interests;
  final String? height;
  final String? weight;

  UserModel({
    this.uid,
    this.userName,
    this.phone,
    this.fcmToken,
    this.gender,
    this.city,
    this.dateOfBirth,
    this.images,
    this.interests,
    this.height,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'userName': userName,
      'phone': phone,
      'fcmToken': fcmToken,
      'gender': gender,
      'city': city,
      'dateOfBirth': dateOfBirth?.millisecondsSinceEpoch,
      'images': images?.map((x) => x.toMap()).toList(),
      'interests': interests,
      'height': height,
      'weight': weight,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      userName: map['userName'],
      phone: map['phone'],
      fcmToken: map['fcmToken'],
      gender: map['gender'],
      city: map['city'],
      dateOfBirth: map['dateOfBirth'] != null
          ? (map['dateOfBirth'] as Timestamp).toDate()
          : null,
      images: map['images'] != null
          ? List<UserImage>.from(
              map['images']?.map((x) => UserImage.fromMap(x)))
          : null,
      interests:
          map['interests'] != null ? List<String>.from(map['interests']) : null,
      height: map['height'],
      weight: map['weight'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}

class UserImage {
  final int? queue;
  final String? url;
  UserImage({
    this.queue,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'queue': queue,
      'url': url,
    };
  }

  factory UserImage.fromMap(Map<String, dynamic> map) {
    return UserImage(
      queue: map['queue']?.toInt(),
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserImage.fromJson(String source) =>
      UserImage.fromMap(json.decode(source));
}
