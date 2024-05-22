
import 'package:flutter/material.dart';
import 'package:movie_1/widgets/movies/categories_list.dart';
import 'package:movie_1/widgets/movies/latest_movies.dart';
import 'package:movie_1/widgets/movies/trending_movies.dart';

class HomeMovieScreen extends StatelessWidget {
  const HomeMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // List<int> movieList = [1,2,3,4,5,6];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TrendingMovies(),
            CategoriesList(),
            LatestMovies()
          ],
        ),
      ),
    );
  }
}
