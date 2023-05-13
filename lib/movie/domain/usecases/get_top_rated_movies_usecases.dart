// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarchitecteurapp2/movie/domain/entities/movie.dart';
import 'package:cleanarchitecteurapp2/movie/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/fialure.dart';
import '../../data/models/movie_model.dart';

class GetTopRatedMoviesUseCase {
  BaseMoviesRepository baseMoviesRepository;
  GetTopRatedMoviesUseCase({
    required this.baseMoviesRepository,
  });

  Future<Either<Failure, List<MovieModel>>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
