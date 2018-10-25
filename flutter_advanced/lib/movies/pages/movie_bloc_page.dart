import 'package:flutter/material.dart';
import 'package:flutter_advanced/movies/blocs/bloc_provider.dart';
import 'package:flutter_advanced/movies/blocs/movie_list_bloc.dart';
import 'package:flutter_advanced/movies/models/movie_mode.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// 用bloc的写法
class MovieListPage extends StatefulWidget {
    
  //  MovieListBloc movieBloc;
  @override
  _MovieListPageState createState(){

    _MovieListPageState view = new _MovieListPageState();
    // movieBloc = MovieListBloc();
    return view;
  }

}

class _MovieListPageState extends State<MovieListPage> {
  

  Widget _imageCard(String img) {
    return Image.network(
      img,
      fit: BoxFit.cover,
    );
  }

  BoxDecoration _buildGradientBackground() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: <double>[0.0, 0.7, 0.7],
        colors: <Color>[
          Colors.black,
          Colors.transparent,
          Colors.transparent,
        ],
      ),
    );
  }

  Widget _buildMovieInfo(MovieModel model) {
    return Container(
      decoration: _buildGradientBackground(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            model.title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            model.voteAverage.toString(),
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget dataWiget(MovieListBloc mbloc) {
    return StreamBuilder<List<MovieModel>>(
      stream: mbloc.outMoviesList,
      builder:
          (BuildContext context, AsyncSnapshot<List<MovieModel>> snapshot) {
        // 有数据
        if (snapshot.data != null && snapshot.data.length > 0) {
          return GridView.builder(
              itemCount: (snapshot.data == null ? 0 : snapshot.data.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                        elevation: 1.0,
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            _imageCard(snapshot.data[index].posterPath),
                            _buildMovieInfo(snapshot.data[index])
                          ],
                        )));
              });
        } else {
          // 在加载时显示Loading
          return Padding(
            padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 35.0),
            child: new Center(
              child: SpinKitFadingCircle(
                color: Colors.blueAccent,
                size: 30.0,
              ),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // 方法1.此种方法，要在push时，初始化BlocProvider不然会报错
    final MovieListBloc movieBloc = BlocProvider.of<MovieListBloc>(context);
    return Scaffold(
        appBar: AppBar(title: Text("电影")),
        body: dataWiget(movieBloc)
    );
  }
}
