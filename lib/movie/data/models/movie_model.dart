import 'package:cleanarchitecteurapp2/movie/domain/entities/movie.dart';

class MovieModel extends Movie {
  MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genreIds,
      required super.overview,
      required super.voteAverage,
      required super.releasedate});

// from json factory method

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        id: json['id'],
        title: json['title'],
        backdropPath: json['backdrop_path'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
        overview: json['overview'],

        /// TODO: CHECK THIS
        voteAverage: json['vote_average'],
        releasedate: json['release_date']);
  }
}




// the but of state management
//1__ is separate ui 3an busieness logique 
//2__ not rebuil a part of screen not need to rebuild  
