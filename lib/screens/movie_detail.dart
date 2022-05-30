import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:first_home_work/models/movie.dart';
import 'package:first_home_work/utils/network_util.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Movie detail',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Container(
                  child: ClipRect(
                    child: Image.network(
                        '$IMAGE_BASE_URL/w500' + movie.backdrop_path),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                '$IMAGE_BASE_URL/w200' + movie.poster_path))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: 500,
              height: 30,
              child: Text(
                movie.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              )),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.black.withOpacity(0.2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Icon(Icons.messenger), Text('Reviews')],
              ),
              VerticalDivider(
                color: Colors.black.withOpacity(0.2),
              ),
              Column(
                children: [Icon(Icons.play_arrow), Text('Trailers')],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.black.withOpacity(0.2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Genre',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(movie.genre_ids.toString())
                ],
              ),
              VerticalDivider(
                color: Colors.black.withOpacity(0.2),
              ),
              Column(
                children: [
                  Text(
                    'Release',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(movie.release_date)
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.black.withOpacity(0.2),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              width: 500,
              child: Text(
                movie.overview,
                style: TextStyle(
                  fontSize: 18,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              )),
        ],
      ),
    );
  }
}
