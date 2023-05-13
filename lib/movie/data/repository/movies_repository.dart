// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarchitecteurapp2/core/error/exception.dart';
import 'package:cleanarchitecteurapp2/core/error/fialure.dart';
import 'package:cleanarchitecteurapp2/movie/data/datasource/remote_data_source.dart';
import 'package:cleanarchitecteurapp2/movie/data/models/movie_model.dart';
import 'package:cleanarchitecteurapp2/movie/domain/entities/movie.dart';
import 'package:cleanarchitecteurapp2/movie/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

class MoviesRepository extends BaseMoviesRepository {
  BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository({
    required this.baseMovieRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<MovieModel>>> getNowPlaying() async {
    final result = await baseMovieRemoteDataSource.getListMovies();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(FailureServer(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }
}
