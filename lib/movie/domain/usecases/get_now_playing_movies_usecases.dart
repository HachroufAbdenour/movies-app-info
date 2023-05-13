// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarchitecteurapp2/movie/domain/entities/movie.dart';
import 'package:cleanarchitecteurapp2/movie/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/fialure.dart';
import '../../data/models/movie_model.dart';

class GetNowPlayingMoviesUseCases {
  BaseMoviesRepository
      baseMoviesRepository; // just reference because  imposible create instance from ansbstract class

  GetNowPlayingMoviesUseCases({
    required this.baseMoviesRepository,
  });

//methos t3ayet l method li fi repository(domaine)

  Future<Either<Failure, List<MovieModel>>> execute() async {
    return await baseMoviesRepository.getNowPlaying();
  }
}
