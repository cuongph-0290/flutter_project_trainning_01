class Movie {
  int id;
  num vote_average;
  String title;
  String overview;
  String poster_path;
  String backdrop_path;
  String release_date;
  List<dynamic> genre_ids;

  Movie(this.id, this.vote_average, this.title, this.overview, this.poster_path,
      this.backdrop_path, this.release_date, this.genre_ids);
}
