import 'dart:convert';

String jsonString = """
{
   "studentName": "Alice",
   "studentAge": 18,
   "courses": [
      {
         "courseName": "Mathematics",
         "courseCode": "MATH101",
         "instructor": "Dr. Smith"
      },
      {
         "courseName": "History",
         "courseCode": "HIST201",
         "instructor": "Prof. Johnson"
      }
   ]
}
""";

// TODO: Buatlah model Student dan Course berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!

class Course {}

class Student {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.7.dart
  // nodemon --exec dart bin/3.7.dart

  // Student student = Student.fromJson(jsonDecode(jsonString));
  // checker(student);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic student) {
  print(student);
  List<bool> conditions = [
    student.studentName == "Alice",
    student.studentAge == 18,
    student.courses.length == 2,
    student.courses[0].courseName == "Mathematics",
    student.courses[1].instructor == "Prof. Johnson",
  ];

  if (conditions.contains(false)) {
    print("Jawaban salah!");
    return;
  }
  print("Correct answer!");
}
