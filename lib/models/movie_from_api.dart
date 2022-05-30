import 'package:first_home_work/models/movie.dart';

class MovieFromApi {
  int id = 0;
  num vote_average = 0;
  String title = '';
  String overview = '';
  String poster_path = '';
  String backdrop_path = '';
  String release_date = '';
  List<dynamic> genre_ids = [];

  MovieFromApi(this.id, this.vote_average, this.title, this.overview,
      this.poster_path, this.backdrop_path, this.release_date, this.genre_ids);

  MovieFromApi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vote_average = json['vote_average'];
    title = json['title'];
    overview = json['overview'];
    poster_path = json['poster_path'];
    backdrop_path = json['backdrop_path'];
    release_date = json['release_date'];
    genre_ids = json['genre_ids'];
  }

  Movie toMovie() {
    return Movie(
        this.id,
        this.vote_average,
        this.title,
        this.overview,
        this.poster_path,
        this.backdrop_path,
        this.release_date,
        this.genre_ids);
  }
}
