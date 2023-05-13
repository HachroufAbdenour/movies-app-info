class ApiConstant {
  static const String baseurl = 'https://api.themoviedb.org/3';
  static const String apiKey = "cac058658ec1ced4653d0ca0cf4f7126";

  static String nowPlayingMoviePath =
      "$baseurl/movie/now_playing?api_key=$apiKey";

  static String topRatedMoviePath = "$baseurl/movie/top_rated?api_key=$apiKey";
  static String pupolarMoviePath = "$baseurl/movie/popular?api_key==$apiKey";
}
