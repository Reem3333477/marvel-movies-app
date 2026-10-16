class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  const Movie(
    title: 'Iron Man 1',
    genre: 'Action • Sci-Fi',
    year: 2008,
    rating: 9.0,
    image: 'assets/posters/movie1.jpg',
  ),
  const Movie(
    title: 'Iron Man 2',
    genre: 'Action • Sci-Fi',
    year: 2010,
    rating: 8.5,
    image: 'assets/posters/movie2.jpg',
  ),
  const Movie(
    title: 'The Avengers',
    genre: 'Action • Sci-Fi',
    year: 2012,
    rating: 9.5,
    image: 'assets/posters/movie3.jpg',
  ),
  const Movie(
    title: 'Avengers: Age of Ultron',
    genre: 'Action • Sci-Fi',
    year: 2015,
    rating: 8.9,
    image: 'assets/posters/movie4.jpg',
  ),
  const Movie(
    title: 'Avengers: Infinity War',
    genre: 'Action • Sci-Fi',
    year: 2018,
    rating: 9.6,
    image: 'assets/posters/movie5.jpg',
  ),
  const Movie(
    title: 'Avengers: Endgame',
    genre: 'Action • Sci-Fi',
    year: 2019,
    rating: 9.8,
    image: 'assets/posters/movie6.jpg',
  ),
  const Movie(
    title: 'Avengers: Doomsday',
    genre: 'Action • Sci-Fi',
    year: 2026,
    rating: 9.9,
    image: 'assets/posters/movie7.jpg',
  ),
  const Movie(
    title: 'Avengers: Secret Wars',
    genre: 'Action • Sci-Fi',
    year: 2027,
    rating: 9.9,
    image: 'assets/posters/movie8.jpg',
  ),
];