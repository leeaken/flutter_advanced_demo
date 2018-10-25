import 'package:flutter/material.dart';
import 'package:flutter_advanced/movies/apis/movie_api.dart';
import 'package:flutter_advanced/movies/models/movie_mode.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// 传统的写法
class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final api = MovieApi();
  List<MovieModel> resultDatas = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    api.pagedList().then((model) {
      setState(() {
        resultDatas = model.movies;
      });
    });
  }

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

  Widget dataWiget(){

    Widget bodyWiget;
    if (resultDatas != null && resultDatas.length != 0) {
      bodyWiget = GridView.builder(
              itemCount: resultDatas.length,
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
                            _imageCard(resultDatas[index].posterPath),
                            _buildMovieInfo(resultDatas[index])
                          ],
                        )));
              });
    }else {
      bodyWiget = Padding(
          padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 35.0),
          child: new Center(
            child: SpinKitFadingCircle(
              color: Colors.blueAccent,
              size: 30.0,
            ),
          ),
        );
    }
    return bodyWiget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("电影")),
        body: dataWiget()
    );
  }
}
