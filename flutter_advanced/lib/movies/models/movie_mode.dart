
class MovieModel {
  final int id;
  final voteAverage;
  final String title;
  final String posterPath;
  final String overview;

  static String imageBaseUrl = 'http://image.tmdb.org/t/p/w185/';
  MovieModel(this.id, this.voteAverage, this.title, this.posterPath, this.overview);

  MovieModel.fromJSON(Map<String, dynamic> json)
    : id = json['id'],
      voteAverage = json['vote_average'],
      title = json['title'],
      posterPath = imageBaseUrl+json['poster_path'],
      overview = json['overview'];
}

class MovieResult {
  final int pageIndex;
  final int totalResults;
  final int totalPages;
  final List<MovieModel> movies;

  MovieResult.fromJSON(Map<String, dynamic> json)
    : pageIndex = json['page'],
      totalResults = json['total_results'],
      totalPages = json['total_pages'],
      movies = (json['results'] as List).map((json) => MovieModel.fromJSON(json)).toList();
}