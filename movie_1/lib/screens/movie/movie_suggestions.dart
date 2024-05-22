
import 'package:flutter/material.dart';
import 'package:movie_1/widgets/movies/movie_tile.dart';

import '../../models/movie_model.dart';

// ignore: must_be_immutable
class MovieSuggestions extends StatefulWidget {
  List<MovieModel> movieList;

  MovieSuggestions({super.key, required this.movieList});

  @override
  State<MovieSuggestions> createState() => _MovieSuggestionsState();
}

class _MovieSuggestionsState extends State<MovieSuggestions> {


  @override
  void initState(){
    super.initState();
    // Provider.of<MovieProvider>(context, listen: false).loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    // List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Similar Movies'),
        Container(
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.movieList.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieTile(movie: widget.movieList[index]);
              }),
        ),
      ],
    );
  }
}
