import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/services/service_locator.dart';
import 'package:movie_app/presentation/components/now_playing_component.dart';
import 'package:movie_app/presentation/components/popular_movies_list.dart';
import 'package:movie_app/presentation/components/section_header.dart';
import 'package:movie_app/presentation/components/top_rated_movies.dart';
import 'package:movie_app/presentation/controllers/movies_bloc.dart';
import 'package:movie_app/presentation/controllers/movies_event.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NowPlayingComponent(),
              SectionHeader(
                title: "Popular",
                onSeeMoreTap: () {
                  /// TODO : NAVIGATION TO POPULAR SCREEN
                },
              ),

              PopularMoviesList(),
              SectionHeader(
                title: "Top Rated",
                onSeeMoreTap: () {
                  /// TODO : NAVIGATION TO Top Rated Movies Screen
                },
              ),

              TopRatedMovies(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
