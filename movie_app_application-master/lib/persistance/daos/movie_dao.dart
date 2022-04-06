import 'package:movie_app/data/data.vos/movie_vo.dart';

abstract class MovieDao{
  void saveMovies(List<MovieVO> movies);
  void saveSingleMovie(MovieVO movie);
  List<MovieVO> getAllMovies();
  MovieVO? getMovieById(int movieId);
  Stream<void> getAllMoviesEventStream();
  List<MovieVO> getNowPlayingMovies();
  Stream<List<MovieVO>> getNowPlayingMoviesStream();
  List<MovieVO> getPopularMovies();
  Stream<List<MovieVO>> getPopularMoviesStream();
  List<MovieVO> getTopRatedMovies();
  Stream<List<MovieVO>> getTopRatedMoviesStream();
}