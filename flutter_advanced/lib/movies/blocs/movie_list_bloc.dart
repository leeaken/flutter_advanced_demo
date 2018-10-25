import 'package:flutter_advanced/movies/apis/movie_api.dart';
import 'package:flutter_advanced/movies/blocs/bloc_provider.dart';
import 'package:flutter_advanced/movies/models/movie_mode.dart';
import 'package:rxdart/rxdart.dart';

class MovieListBloc implements BlocBase {

  final _api = MovieApi();
  PublishSubject<List<MovieModel>> _moviesController = PublishSubject<List<MovieModel>>();
  Sink<List<MovieModel>> get _inMoviesList => _moviesController.sink;
  Stream<List<MovieModel>> get outMoviesList => _moviesController.stream;

  MovieListBloc() {
    _api.pagedList().then((model){
        if(model.movies !=null && model.movies.length > 0){
          _inMoviesList.add(model.movies);
        }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
     _moviesController.close();
  }

}