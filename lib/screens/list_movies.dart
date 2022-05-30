import 'package:first_home_work/screens/list_movies_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import './movie_item.dart';
import './movie_detail.dart';

class ListMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ListMoviesViewModel.getInstance(),
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Popular',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0,
          ),
          body: showListMovies()),
    );
  }

  Widget showListMovies() => ScopedModelDescendant<ListMoviesViewModel>(builder:
          (BuildContext context, Widget child, ListMoviesViewModel model) {
        return ListView.builder(
          itemCount: model.movies.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: MovieItem(movie: model.movies[index]),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MovieDetail(movie: model.movies[index]);
                }));
              },
            );
          },
        );
      });
}
