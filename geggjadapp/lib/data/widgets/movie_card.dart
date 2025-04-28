import 'package:flutter/material.dart';
import 'package:geggjadapp/data/moviedata.dart';
import 'package:geggjadapp/models/movies.dart';
import 'package:geggjadapp/moviescreen.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(this.movie, {super.key});
  final Movie movie;
  

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Moviescreen(),
          ),
         );
      },
      child: Card(
        child: Column(
          children: [
            Image.network(movie.imageUrl, fit: BoxFit.cover, height: 200),
            const SizedBox(height: 10), 
            Text(
              movie.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5,),
              Text(
                movie.startTime,
                style: TextStyle(fontWeight: FontWeight.bold, ),
              )
            ],
        ),
      ),
    );
  }
}