import 'package:flutter/cupertino.dart';
import 'package:movie_app/data/data.vos/actor_vo.dart';
import 'package:movie_app/data/data.vos/movie_vo.dart';
import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/models/movie_model_impl.dart';

class MovieDetailsBloc extends ChangeNotifier {
  ///State Variables
  MovieVO? mMovieDetails;
  List<ActorVO>? mCast;
  List<ActorVO>? mCrew;

  ///Model
  MovieModel mMovieModel = MovieModelImpl();

  MovieDetailsBloc(int movieId) {
    ///MovieDetails
    mMovieModel.getMovieDetails(movieId).then((movieDetails) {
      mMovieDetails = movieDetails;
      notifyListeners();
    }).catchError((error) {});

    ///Movie Details Database
    mMovieModel.getMovieDetailsFromDatabase(movieId).then((movieDetails) {
      mMovieDetails = movieDetails;
      notifyListeners();
    }).catchError((error) {});

    ///CreditsByMovie
    mMovieModel.getCreditsByMovie(movieId).then((castAndCrew) {
      mCast = castAndCrew.first;
      mCrew = castAndCrew[1];
      notifyListeners();
    }).catchError((error) {
      debugPrint(error.toString());
    });
  }
}
