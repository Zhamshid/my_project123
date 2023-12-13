import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_project/src/core/extensions/generic_map.dart';
import 'package:my_project/src/feature/auth/data/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final db = FirebaseFirestore.instance;
final currentUserID = FirebaseAuth.instance.currentUser!.uid;
final allUsers = db.collection('users');
final currentUserData = allUsers.doc(currentUserID.toString());

class FirebaseRepository {
  final FirebaseAuth auth;
  final SharedPreferences preferences;

  FirebaseRepository({required this.auth, required this.preferences});

  String? get phone => preferences.getString('phone');

  // Check if new user
  Future<bool> isNewUser() async {
    final snapshot = await allUsers.get();

    final users = snapshot.docs.mapToList((e) => UserModel.fromMap(e.data()));

    return users.where((e) => e.phone == phone).isEmpty;
  }

  // Get user data
  Future<UserModel> getUser() async {
    final snapshot = await allUsers.get();

    final users = snapshot.docs.mapToList((e) => UserModel.fromMap(e.data()));
    log('${preferences.getString('phone')}');
    return users.firstWhere((e) => e.phone == phone);
  }

  // Creates empty user profile
  Future<void> createUser(UserModel user) async {
    log('Create user called: ${user.uid}');
    return currentUserData.set(user.toMap());
  }

  // Update user data
  Future<void> updateUser(String name) async {
    final user = await getUser();

    log('Update user called: ${user.uid} <=> $name');

    final userData = allUsers.doc(user.uid);

    return userData.update({'userName': name});
  }

  // Update user data fully
  Future<void> updateUserFull(UserModel userModel) async {
    final user = await getUser();

    final userData = allUsers.doc(user.uid);

    return userData.update(userModel.toMap());
  }
}
