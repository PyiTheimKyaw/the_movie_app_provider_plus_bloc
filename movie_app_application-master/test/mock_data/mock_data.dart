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
      "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
      [28, 12, 878],
      634649,
      "en",
      "Spider-Man: No Way Home",
      "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
      6064.019,
      "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
      "2021-12-15",
      "Spider-Man: No Way Home",
      false,
      8.2,
      11022,
      isNowPlaying: false,
      isPopular: true,
      isTopRated: false,
    ),
    MovieVO(
        false,
        "/wPU78OPN4BYEgWYdXyg0phMee64.jpg",
        [18, 80],
        278,
        "en",
        "The Shawshank Redemption",
        "Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
        78.147,
        "/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
        "1994-09-23",
        "The Shawshank Redemption",
        false,
        8.7,
        21091,
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
