
import 'package:data_fetching_from_rest_api_in_flutter/models/newsInfo.dart';
import 'package:data_fetching_from_rest_api_in_flutter/pages/movieCard.dart';
import 'package:data_fetching_from_rest_api_in_flutter/pages/movieDetails.dart';
import 'package:data_fetching_from_rest_api_in_flutter/services/api_manager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Movie> _movieModel;

  @override
  void initState() {
    _movieModel = API_Manager().getMovie();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<Movie>(
          future: _movieModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: snapshot.data!.results.length,
                itemBuilder: (context, index) {
                  var album = snapshot.data!.results[index];
                  return InkWell(
                    child: MovieCard(
                      'https://image.tmdb.org/t/p/w500/' + album.posterPath,
                      album.title,
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return MovieDetails(
                            album.title,
                            'https://image.tmdb.org/t/p/w500/' +
                                album.posterPath,
                            album.overview,
                          );
                        },
                      ));
                    },
                  );
                },
              );
            } else
              return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
