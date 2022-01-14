class Movie {
  String? imdbId;
  String? poster;
  String? title;
  String? year;

  Movie({this.imdbId, this.title, this.poster, this.year});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        imdbId: json["imdbID"],
        poster: json["Poster"],
        title: json["Title"],
        year: json["Year"]);
  }
}
