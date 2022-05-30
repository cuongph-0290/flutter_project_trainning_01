import 'package:scoped_model/scoped_model.dart';
import 'package:first_home_work/data/movie_api.dart';
import 'package:first_home_work/models/movie.dart';

class ListMoviesViewModel extends Model {
  static ListMoviesViewModel _instance = ListMoviesViewModel();

  static ListMoviesViewModel getInstance() {
    if (_instance == null) {
      _instance = ListMoviesViewModel();
    }
    return _instance;
  }

  List<Movie> movies = [];

  ListMoviesViewModel() {
    getListMovies();
  }

  void getListMovies() async {
    movies = await MovieApi().getListMoviesByPage(1);
    notifyListeners();
  }
}
