// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title; // name fo film
  final String backdropPath; //image
  final List<int> genreIds; //
  final String overview; //wasef ==description
  final double voteAverage; // rating
  final String releasedate; //date te3 film

  const Movie(
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.genreIds,
      required this.overview,
      required this.voteAverage,
      required this.releasedate});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, title, backdropPath, genreIds, overview, voteAverage, releasedate];

/*
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          backdropPath == other.backdropPath &&
          genreIds == other.backdropPath &&
          overview == other.overview &&
          voteAverage == other.voteAverage;

  @override
  int get hashcode =>
      id.hashCode ^
      title.hashCode ^
      backdropPath.hashCode ^
      genreIds.hashCode ^
      voteAverage.hashCode;
      */
}
