import 'dart:convert';

String jsonString = """
{
   "movieTitle": "Inception",
   "director": "Christopher Nolan",
   "releaseYear": 2010,
   "genres": ["Sci-Fi", "Action", "Thriller"]
}
""";

// TODO: Buatlah model Movie berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!

class Movie {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.5.dart
  // nodemon --exec dart bin/3.5.dart

  // Movie movie = Movie.fromJson(jsonDecode(jsonString));
  // checker(movie);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic movie) {
  print(movie);
  List<bool> conditions = [
    movie.movieTitle == "Inception",
    movie.director == "Christopher Nolan",
    movie.releaseYear == 2010,
    List<String>.from(movie.genres).toString() == '[Sci-Fi, Action, Thriller]',
  ];

  if (conditions.contains(false)) {
    print("Jawaban salah!");
    return;
  }
  print("Correct answer!");
}
