import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/Helpers/app_asset_helper.dart';
import 'package:movie_app/core/constants/app_constants.dart';
import 'package:movie_app/core/utils/enums.dart';
import 'package:movie_app/data/network/api_constance.dart';
import 'package:movie_app/presentation/controllers/movies_bloc.dart';
import 'package:movie_app/presentation/controllers/movies_state.dart';

class PopularMoviesList extends StatelessWidget {
  const PopularMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) =>
          previous.popularState != current.popularState,
      builder: (context, state) {
        if (AppConstants.isDebugMode) {
          debugPrint('Popular Movies ${state.popularState}');
        }

        switch (state.popularState) {
          case RequestState.loading:
            return SizedBox(
              height: 170.0,
              child: Center(
                child: CircularProgressIndicator(color: Colors.grey[800]),
              ),
            );
          case RequestState.loaded:
            return FadeIn(
              duration: const Duration(milliseconds: 500),
              child: SizedBox(
                height: 170.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: state.popularMovies.length,
                  itemBuilder: (context, index) {
                    final movie = state.popularMovies[index];
                    return Container(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          /// TODO : NAVIGATE TO  MOVIE DETAILS
                        },
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          child: AppAssetHelper.cachedImage(
                            ApiConstants.imageUrl(movie.backdropPath!),
                            width: 120.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: 170.0,
              child: Center(
                child: Text(
                  state.popularErrorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            );
        }
      },
    );
  }
}
