import 'package:flutter/foundation.dart';
import 'package:movie_app/data/data.vos/actor_vo.dart';
import 'package:movie_app/data/data.vos/genre_vo.dart';
import 'package:movie_app/data/data.vos/movie_vo.dart';
import 'package:movie_app/data/models/movie_model.dart';
import 'package:movie_app/data/models/movie_model_impl.dart';

class HomeBloc extends ChangeNotifier {
  ///State Variables
  List<MovieVO>? mNowPlayingMovies;
  List<MovieVO>? mPopularMovies;
  List<MovieVO>? mTopRatedMovies;
  List<MovieVO>? mMoviesByGenre;
  List<GenreVO>? mGenres;
  List<ActorVO>? mActors;
  MovieModel mMovieModel = MovieModelImpl();

  HomeBloc() {
    ///Now Playing Movies Database
    mMovieModel.getNowPlayingMoviesFromDatabase().listen((movieList) {
      mNowPlayingMovies = movieList;
      notifyListeners();
    }).onError((error) {
      debugPrint(error.toString());
    });

    ///Popular Movies Database
    mMovieModel.getPopularMoviesFromDatabase().listen((movieList) {
      mPopularMovies = movieList;
      notifyListeners();
    }).onError((error) {
      debugPrint(error.toString());
    });

    ///Top Rated Movies Database
    mMovieModel.getTopRatedMoviesFromDatabase().listen((movieList) {
      mTopRatedMovies = movieList;
      notifyListeners();
    }).onError((error) {
      debugPrint(error.toString());
    });

    ///Genres
    mMovieModel.getGenres().then((genres) {
      mGenres = genres;
      notifyListeners();

      ///Movies By Genre
      getMoviesByGenreAndRefresh(genres?.first.id ?? 0);
    }).catchError((error) {
      debugPrint(error.toString());
    });

    ///Genres Database
    mMovieModel.getGenresFromDatabase().then((genres) {
      mGenres = genres;
      notifyListeners();

      ///Movies By Genre Database
      getMoviesByGenreAndRefresh(genres?.first.id ?? 0);
    }).catchError((error) {
      debugPrint(error.toString());
    });

    ///Actors
    mMovieModel.getActors(1).then((actors) {
     mActors=actors;
     notifyListeners();
    }).catchError((error) {
      debugPrint(error.toString());
    });

    ///Actors Database
    mMovieModel.getActorsFromDatabase().then((actors) {
     mActors=actors;
     notifyListeners();
    }).catchError((error) {
      debugPrint(error.toString());
    });
  }
  void onTapGenre(int genreId){
    getMoviesByGenreAndRefresh(genreId);
  }
  void getMoviesByGenreAndRefresh(int genreId) {
    mMovieModel.getMoviesByGenre(genreId).then((moviesByGenre) {
      mMoviesByGenre = moviesByGenre;
      notifyListeners();
    }).catchError((error) {});
  }
}
