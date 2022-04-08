import 'package:flutter/material.dart';
import 'package:movie_app/components/smar_list_view.dart';
import 'package:movie_app/data/data.vos/movie_vo.dart';
import 'package:movie_app/resources/dimens.dart';
import 'package:movie_app/resources/strings.dart';
import 'package:movie_app/view_items/movie_view.dart';
import 'package:movie_app/widgets/title_text.dart';

class TitleAndHorizontalMovieListView extends StatelessWidget {
  final Function(int?) onTapMovie;
  final String title;
  final List<MovieVO>? nowPlayingMovies;
  final Function onListEndReached;

  TitleAndHorizontalMovieListView(this.onTapMovie,
      {required this.nowPlayingMovies,required this.title,required this.onListEndReached});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: MARGIN_MEDIUM_2),
          child: TitleText(title),
        ),
        SizedBox(
          height: MARGIN_LARGE,
        ),
        HorizontalMovieListView(
          onTapMovie: (movieId) => this.onTapMovie(movieId),
          movieList: nowPlayingMovies,
          onListEndReached: (){
            this.onListEndReached();
          },
        ),
      ],
    );
  }
}
class HorizontalMovieListView extends StatelessWidget {
  final Function(int?) onTapMovie;
  final List<MovieVO>? movieList;
  final Function onListEndReached;
  HorizontalMovieListView({required this.onTapMovie, required this.movieList,required this.onListEndReached});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MOVIE_LIST_HEIGHT,
      child: (movieList != null)
          ? 
      // ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
      //   itemCount: movieList?.length ?? 0,
      //   itemBuilder: (BuildContext context, int index) {
      //     return GestureDetector(
      //       onTap: () => onTapMovie(movieList?[index].id),
      //       child: MovieView(
      //         movie: movieList?[index],
      //       ),
      //     );
      //   },
      // )
      SmartHorizonListView(
        padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
        itemCount: movieList?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return MovieView(
            onTapMovie: (){
              onTapMovie(movieList?[index].id);
            },
            movie: movieList?[index],
          );
        }, onListEndReached: (){
          this.onListEndReached();
      },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}