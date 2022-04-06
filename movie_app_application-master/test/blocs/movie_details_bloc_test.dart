import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/blocs/movie_details_bloc.dart';

import '../data.models/movie_model_impl_mock.dart';
import '../mock_data/mock_data.dart';

void main() {
  group("Movie Details Bloc Test", () {
    MovieDetailsBloc? movieDetailsBloc;
    setUp(() {
      movieDetailsBloc = MovieDetailsBloc(1, MovieModelImplMock());
    });
    test("Fetch Movie Details Test", () {
      expect(movieDetailsBloc?.mMovieDetails, getMockMoviesForTest().first);
    });
    test("Fetch Actors Test", () {
      expect(movieDetailsBloc?.mCast, getMockCredits().first);
      // expect(movieDetailsBloc?.mCast?.contains(getMockCredits().first), true);
    });
    test("Fetch Creators Test", () {
      expect(movieDetailsBloc?.mCrew, getMockCredits().last);
      // expect(movieDetailsBloc?.mCrew?.contains(getMockCredits()[1]), true);
    });
    test("Fetch Related Movies Test", () async {
      movieDetailsBloc?.getRelatedMovies(3);
      await Future.delayed(Duration(microseconds: 500));
      expect(
          movieDetailsBloc?.mRelatedMovies
              ?.contains(getMockMoviesForTest().last),
          true);
    });
  });
}
