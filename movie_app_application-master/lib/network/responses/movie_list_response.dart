import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/data.vos/date_vo.dart';
import 'package:movie_app/data/data.vos/movie_vo.dart';

part 'movie_list_response.g.dart';

///MovieListResponse is used in now playing,popular,top rated,get movies by genre.

@JsonSerializable()
class MovieListResponse{

  @JsonKey(name: "dates")
  DateVO? dates;

  @JsonKey(name: "page")
  int? page;

  @JsonKey(name: "results")
  List<MovieVO>? results;

  MovieListResponse(this.dates, this.page, this.results);

  factory MovieListResponse.fromJson(Map<String,dynamic> json) => _$MovieListResponseFromJson(json);

  Map<String,dynamic> toJson() => _$MovieListResponseToJson(this);
}