
import 'package:flutter/material.dart';
import 'package:movie_1/models/movie_model.dart';

import '../../screens/movie/movie_details.dart';

// ignore: must_be_immutable
class BigMovieCard extends StatelessWidget {
  MovieModel movie;
  BigMovieCard(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MovieDetails(movieId:movie.id)));
      },
      child: Container(
        height:200,
        width:300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              fit: BoxFit.cover,
            image:  NetworkImage(movie.img)
          ),
        ),
        margin: const EdgeInsets.only(right: 8),
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: const EdgeInsets.all(8),
        ),
      ),
    );
  }
}
