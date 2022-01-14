import 'package:flutter/material.dart';
import 'package:movie_db_app/models/movie.dart';

class MoviesWidget extends StatefulWidget {
  final List<Movie> movies;

  const MoviesWidget({required this.movies});

  @override
  State<MoviesWidget> createState() => _MoviesWidgetState();
}

class _MoviesWidgetState extends State<MoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.movies.length,
        itemBuilder: (context, index) {
          final movie = widget.movies[index];

          return ListTile(
              title: Row(
            children: [
              SizedBox(
                  width: 150,
                  child: ClipRRect(
                    child: Image.network(movie.poster!),
                    borderRadius: BorderRadius.circular(10),
                  )),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(movie.title!), Text(movie.year!)],
                  ),
                ),
              )
            ],
          ));
        });
  }
}
