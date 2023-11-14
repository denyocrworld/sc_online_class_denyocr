import 'dart:convert';

String jsonString = """
{
   "bookTitle": "The Great Gatsby",
   "author": "F. Scott Fitzgerald",
   "publicationYear": 1925,
   "genres": ["Fiction", "Classic", "Romance"]
}
""";

// TODO: Buatlah model Book berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!
class Book {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.4.dart
  // nodemon --exec dart bin/3.4.dart

  // Book book = Book.fromJson(jsonDecode(jsonString));
  // checker(book);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic book) {
  print(book);
  List<bool> conditions = [
    book.bookTitle == "The Great Gatsby",
    book.author == "F. Scott Fitzgerald",
    book.publicationYear == 1925,
    List<String>.from(book.genres).toString() == '[Fiction, Classic, Romance]',
  ];

  if (conditions.contains(false)) {
    print("Jawaban salah!");
    return;
  }
  print("Correct answer!");
}
