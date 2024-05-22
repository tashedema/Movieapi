import 'package:flutter/material.dart';
import 'package:movie_1/providers/movie_provider.dart';
import 'package:movie_1/widgets/movies/movie_tile.dart';
import 'package:provider/provider.dart';

import '../../models/movie_model.dart';

class TrendingMovieScreen extends StatefulWidget {
  const TrendingMovieScreen({super.key});

  @override
  State<TrendingMovieScreen> createState() => _TrendingMovieScreenState();
}

class _TrendingMovieScreenState extends State<TrendingMovieScreen> {

  @override
  void initState(){
    super.initState();
    Provider.of<MovieProvider>(context, listen: false).loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;

    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return MovieTile(movie: movieList[index]);
        });
  }
}