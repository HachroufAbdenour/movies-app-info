import 'package:cleanarchitecteurapp2/movie/domain/entities/movie.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/fialure.dart';
import '../../data/models/movie_model.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<MovieModel>>> getNowPlaying();

  Future<Either<Failure, List<MovieModel>>> getPopularMovies();

  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
}



//idea videoiatk te3 screen record apps hothom fi twweter wa dirlhom sharing in linkdin 
// hna fi repository te3 domaine ndiro contract brk     ===   abstract methodes  