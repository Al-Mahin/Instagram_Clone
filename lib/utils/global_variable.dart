import 'package:emailauth/screens/add_post_screen.dart';
import 'package:emailauth/screens/feed_screen.dart';
import 'package:emailauth/screens/profile_screen.dart';
import 'package:emailauth/screens/search_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
