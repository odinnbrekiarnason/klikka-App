import 'package:flutter/material.dart';

class Movie {
  String title;
  String imageUrl;
  String releaseDate;
  String id;
  String description;
  String genre;
  String startTime;

  Movie({
  required this.startTime,
  required this.title, 
  required this.imageUrl, 
  required this.releaseDate, 
  required this.id, 
  required this.description, 
  required this.genre 
  });
}
