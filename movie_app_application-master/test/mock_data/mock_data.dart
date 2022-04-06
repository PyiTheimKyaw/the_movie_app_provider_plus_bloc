import 'package:movie_app/data/data.vos/actor_vo.dart';
import 'package:movie_app/data/data.vos/genre_vo.dart';
import 'package:movie_app/data/data.vos/movie_vo.dart';

List<MovieVO> getMockMoviesForTest() {
  return [
    MovieVO(
        false,
        "/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg",
        [16, 10751, 35, 14],
        508947,
        "en",
        "Turning Red",
        "Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda.",
        5329.202,
        "/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg",
        "2022-03-01",
        "Turning Red",
        false,
        7.5,
        1433,
        isNowPlaying: true,
        isPopular: false,
        isTopRated: false),
    MovieVO(
      false,
      "/x747ZvF0CcYYTTpPRCoUrxA2cYy.jpg",
      [28, 12, 878],
      406759,
      "en",
      "Moonfall",
      "A mysterious force knocks the moon from its orbit around Earth and sends it hurtling on a collision course with life as we know it.",
      4501.778,
      "/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg",
      "2022-02-03",
      "Moonfall",
      false,
      6.4,
      495,
      isNowPlaying: false,
      isPopular: true,
      isTopRated: false,
    ),
    MovieVO(
        false,
        "/egoyMDLqCxzjnSrWOz50uLlJWmD.jpg",
        [28, 878, 35, 10751],
        675353,
        "en",
        "Sonic the Hedgehog 2",
        "After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands",
        3032.171,
        "/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
        "2022-03-30",
        "Sonic the Hedgehog 2",
        false,
        7.8,
        122,
        isTopRated: true,
        isPopular: false,
        isNowPlaying: false),
  ];
}

List<ActorVO> getMockActors() {
  return [
    ActorVO(
        adult: false,
        id: 224513,
        knownFor: [],
        popularity: 137.568,
        name: "Ana de Armas",
        profilePath: "/14uxt0jH28J9zn4vNQNTae3Bmr7.jpg"),
    ActorVO(
        adult: false,
        id: 2958961,
        knownFor: [],
        popularity: 112.07,
        name: "Iris Apatow",
        profilePath: "/dVxJmLQf7XJl5GN9bY06gAYCtnL.jpg"),
    ActorVO(
        adult: false,
        id: 1136406,
        knownFor: [],
        popularity: 108.741,
        name: "Tom Holland",
        profilePath: "/bBRlrpJm9XkNSg0YT5LCaxqoFMX.jpg"),
  ];
}

List<GenreVO> getMockGenres() {
  return [
    GenreVO(id: 28, name: "Action"),
    GenreVO(id: 12, name: "Adventure"),
    GenreVO(id: 16, name: "Animation"),
  ];
}

List<List<ActorVO>> getMockCredits() {
  return [
    [
      ActorVO(
        adult: false,
        id: 90633,
        knownForDepartment: "Acting",
        name: "Gal Gadot",
        originalName: "Gal Gadot",
        popularity: 56.593,
        profilePath: "/plLfB60M5cJrnog8KvAKhI4UJuk.jpg",
        castId: 0,
        character: "Diana Prince / Wonder Woman",
        creditId: "595686e4c3a368382e050da4",
        order: 0,
        knownFor: [],
      ),
      ActorVO(
        adult: false,
        id: 62064,
        knownForDepartment: "Acting",
        name: "Chris Pine",
        originalName: "Chris Pine",
        popularity: 32.022,
        profilePath: "/ipG3BMO8Ckv9xVeEY27lzq975Qm.jpg",
        castId: 15,
        character: "Steve Trevor",
        creditId: "5b0b4526c3a3684adc0097a5",
        order: 1,
        knownFor: [],
      ),
      ActorVO(
        adult: false,
        id: 41091,
        knownForDepartment: "Acting",
        name: "Kristen Wiig",
        originalName: "Kristen Wiig",
        popularity: 19.27,
        profilePath: "/N517EQh7j4mNl3BStMmjMN6hId.jpg",
        castId: 12,
        character: "Barbara Minerva / Cheetahn",
        creditId: "5a975236c3a36861510077f1",
        order: 2,
        knownFor: [],
      ),
    ],
    [
      ActorVO(
        adult: false,
        id: 1113,
        knownForDepartment: "Production",
        name: "Lucinda Syson",
        originalName: "Lucinda Syson",
        popularity: 2.772,
        profilePath: null,
        creditId: "5c726ac6c3a3685a32151706",
      ),
      ActorVO(
        adult: false,
        id: 947,
        knownForDepartment: "Sound",
        name: "Hans Zimmer",
        originalName: "Hans Zimmer",
        popularity: 4.358,
        profilePath: "/tpQnDeHY15szIXvpnhlprufz4d.jpg",
        creditId: "5b7dcdd70e0a2615ba005fa8",
      ),
      ActorVO(
        adult: false,
        id: 282,
        knownForDepartment: "Production",
        name: "Charles Roven",
        originalName: "Charles Roven",
        popularity: 1.387,
        profilePath: "/4uJLoVstC1CBcArXFOe53N2fDr1.jpg",
        creditId: "5b212459c3a368149000ed97",
      ),
    ]
  ];
}
