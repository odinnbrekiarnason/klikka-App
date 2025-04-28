import 'package:flutter/material.dart';
import 'package:geggjadapp/models/movies.dart';

class Moviescreen extends StatelessWidget {
  const Moviescreen(this.movie, {super.key});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                movie.title, 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
            Image.network(movie.imageUrl, height: 200,
            ), 

              const SizedBox(height: 20,),
              Text(                       
                "Description: ${movie.description}",
                style: const TextStyle(fontSize: 10, color: Colors.white,),
              ),
              const SizedBox(height: 20,),
              Text(
                "Genre: ${movie.genre}",
                style: const TextStyle(fontSize: 10, color: Colors.white),
              ), 
              const SizedBox(height: 20,),
              Text(
                "Release Date: ${movie.releaseDate}",
                style: const TextStyle(fontSize: 10, color: Colors.white), 
              ),
              Spacer(),
        
              Container(
                child: Text(
                  "Start Time: ${movie.startTime}",
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              ],
              ),
              ),
      ),);
}
}