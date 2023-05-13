import 'package:cleanarchitecteurapp2/movie/data/datasource/remote_data_source.dart';
import 'package:cleanarchitecteurapp2/movie/data/repository/movies_repository.dart';
import 'package:cleanarchitecteurapp2/movie/domain/repository/base_movies_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/usecases/get_now_playing_movies_usecases.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  @override
  void initState() {
    super.initState();

    _getDate();
  }

  void _getDate() async {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();

    BaseMoviesRepository baseMoviesRepository =
        MoviesRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);

// ui ut3aml m3a useCases brk
    final result = await GetNowPlayingMoviesUseCases(
            baseMoviesRepository: baseMoviesRepository)
        .execute();
    print(result);
  }
}
