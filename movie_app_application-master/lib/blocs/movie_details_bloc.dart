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
  List<MovieVO>? mRelatedMovies;

  ///Model
  MovieModel mMovieModel = MovieModelImpl();

  MovieDetailsBloc(int movieId,[MovieModel? movieModel]) {
    if(movieModel!=null){
      mMovieModel=movieModel;
    }
    ///MovieDetails
    mMovieModel.getMovieDetails(movieId).then((movieDetails) {
      mMovieDetails = movieDetails;
      getRelatedMovies(movieDetails?.genres?.first.id ?? 0);
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
  void getRelatedMovies(int genreId){
    mMovieModel.getMoviesByGenre(genreId).then((relatedMovies) {
      mRelatedMovies=relatedMovies;
      notifyListeners();
    });
  }
}
