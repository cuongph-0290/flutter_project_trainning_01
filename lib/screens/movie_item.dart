import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:first_home_work/models/movie.dart';
import 'package:first_home_work/utils/network_util.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  MovieItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          width: 120,
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      '$IMAGE_BASE_URL/w200' + movie.poster_path))),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.topLeft,
                width: 310,
                height: 30,
                child: Text(
                  movie.title,
                  style: TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                )),
            Container(
                alignment: Alignment.topLeft,
                width: 310,
                height: 150,
                child: Text(
                  movie.overview,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                )),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
