import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String returnProfileGreeting(DateTime timestamp) {
  // return "morning" if it is morning, "afternoon" if afternoon and "night" if it is night
  var hour = timestamp.hour;
  if (hour >= 0 && hour < 12) {
    return "Good morning,";
  } else if (hour >= 12 && hour < 17) {
    return "Good afternoon,";
  } else {
    return "Goodnight,";
  }
}

String? newCustomFunction() {
  // Add 5 category icon with image
  List<Map<String, dynamic>> categories = [
    {
      'name': 'Vertinary Care',
      'icon': Icons.fastfood,
      'image': 'assets/images/food.jpg',
    },
    {
      'name': 'Travel',
      'icon': Icons.flight,
      'image': 'assets/images/travel.jpg',
    },
    {
      'name': 'Shopping',
      'icon': Icons.shopping_cart,
      'image': 'assets/images/shopping.jpg',
    },
    {
      'name': 'Entertainment',
      'icon': Icons.movie,
      'image': 'assets/images/entertainment.jpg',
    },
    {
      'name': 'Sports',
      'icon': Icons.sports_basketball,
      'image': 'assets/images/sports.jpg',
    },
  ];
  return jsonEncode(categories);
}
