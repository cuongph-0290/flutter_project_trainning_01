import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:first_home_work/models/movie_from_api.dart';
import 'package:first_home_work/models/movie.dart';
import 'package:first_home_work/utils/network_util.dart';

class MovieApi {
  var client = Client();

  Future<List<Movie>> getListMoviesByPage(int page) async {
    String url = '$BASE_URL/movie/popular?api_key=$API_KEY&page=$page';

    var response;

    try {
      response = await client.get(url);
    } on Exception {
      print('Client exeption');
      return [];
    }

    if (response.statusCode == 200) {
      try {
        List<Movie> movies = [];

        for (var movieData in json.decode(response.body)['results']) {
          MovieFromApi movieFromApi;
          movieFromApi = MovieFromApi.fromJson(movieData);
          movies.add(movieFromApi.toMovie());
        }

        return movies;
      } on FormatException {
        print('Json format exception');
        return [];
      }
    } else {
      print('request error: ${response.body}');
      return [];
    }
  }
}
