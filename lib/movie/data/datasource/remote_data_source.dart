import 'dart:math';

import 'package:cleanarchitecteurapp2/core/network/error_message-model.dart';
import 'package:cleanarchitecteurapp2/movie/data/models/movie_model.dart';
import 'package:cleanarchitecteurapp2/movie/domain/entities/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/error/exception.dart';
import '../../../core/error/fialure.dart';
import '../../../core/network/api_constant.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getListMovies();

  Future<List<MovieModel>> getPupolarMovies();

  Future<List<MovieModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  // li tjib now playibg movie
  @override
  Future<List<MovieModel>> getListMovies() async {
    final response = await Dio().get(ApiConstant.nowPlayingMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

// this implement method tjib pupolar movies
  @override
  Future<List<MovieModel>> getPupolarMovies() async {
    final response = await Dio().get(ApiConstant.pupolarMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

// this implement method tjib Top Rated  movies
  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstant.topRatedMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
