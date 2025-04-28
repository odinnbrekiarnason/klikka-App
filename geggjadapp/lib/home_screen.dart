import 'package:flutter/material.dart';
import 'package:geggjadapp/data/moviedata.dart';
import 'package:geggjadapp/data/widgets/movie_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('Bio Paradís')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            return MovieCard(
              movieList[index]
              );
          } ,
        ),
      )
    ),
    theme: isDarkMode ? 
    ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.black,
    ) : ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    ),
    );
  }
}