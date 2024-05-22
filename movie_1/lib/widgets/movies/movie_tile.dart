
import 'package:flutter/material.dart';
import 'package:movie_1/models/movie_model.dart';

import '../../screens/movie/movie_details.dart';

// ignore: must_be_immutable
class MovieTile extends StatelessWidget {
  MovieModel movie;
  MovieTile({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetails(movieId: movie.id,)));
      },
      title: Text(movie.title, ),
      // subtitle: Text(movie.year.toString(), style: TextStyle(
      subtitle: Text(
        movie.year.toString(),
        style: const TextStyle(),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          movie.img,
          height: 80,
          width: 80,
          fit: BoxFit.cover,
        ),
      ),
      trailing: Text(
        movie.rating.toString(),
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
