import 'package:movie_app/data/data.vos/movie_vo.dart';
import 'package:movie_app/persistance/daos/movie_dao.dart';

import '../mock_data/mock_data.dart';

class MovieDaoImplMock extends MovieDao {
  Map<int?, MovieVO> movieInDatabase = {};

  @override
  List<MovieVO> getAllMovies() {
    return getMockMoviesForTest();
  }

  @override
  Stream<void> getAllMoviesEventStream() {
    return Stream.value(null);
  }

  @override
  MovieVO? getMovieById(int movieId) {
    return movieInDatabase.values
        .toList()
        .firstWhere((element) => element.id == movieId);
  }

  @override
  List<MovieVO> getNowPlayingMovies() {
    if (getMockMoviesForTest() != null && getMockMoviesForTest().isNotEmpty ??
        false) {
      return getMockMoviesForTest()
          .where((element) => element.isNowPlaying ?? false)
          .toList();
    } else {
      return [];
    }
  }

  @override
  Stream<List<MovieVO>> getNowPlayingMoviesStream() {
    return Stream.value(getMockMoviesForTest()
        .where((element) => element.isNowPlaying ?? false)
        .toList());
  }

  @override
  List<MovieVO> getPopularMovies() {
    if (getMockMoviesForTest() != null && getMockMoviesForTest().isNotEmpty ??
        false) {
      return getMockMoviesForTest()
          .where((element) => element.isPopular ?? false)
          .toList();
    } else {
      return [];
    }
  }

  @override
  Stream<List<MovieVO>> getPopularMoviesStream() {
    return Stream.value(getMockMoviesForTest()
        .where((element) => element.isPopular ?? false)
        .toList());
  }

  @override
  List<MovieVO> getTopRatedMovies() {
    if (getMockMoviesForTest() != null && getMockMoviesForTest().isNotEmpty ??
        false) {
      return getMockMoviesForTest()
          .where((element) => element.isTopRated ?? false)
          .toList();
    } else {
      return [];
    }
  }

  @override
  Stream<List<MovieVO>> getTopRatedMoviesStream() {
    return Stream.value(getMockMoviesForTest()
        .where((element) => element.isTopRated ?? false)
        .toList());
  }

  @override
  void saveMovies(List<MovieVO> movies) {
    movies.forEach((movie) {
      movieInDatabase[movie.id] = movie;
    });
  }

  @override
  void saveSingleMovie(MovieVO movie) {
    if (movie != null) {
      movieInDatabase[movie.id] = movie;
    }
  }
}
