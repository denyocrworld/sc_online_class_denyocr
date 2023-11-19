import 'dart:convert';

String jsonString = """
{
   "employeeName": "John Doe",
   "employeeAge": 30,
   "employeeDepartment": "IT",
   "employeeSkills": ["Java", "Python", "JavaScript"]
}
""";

// TODO: Buatlah model Employee berdasarkan jsonString di atas!
// Kamu boleh membuatnya manual atau menggunakan alat bantu seperti Quicktype atau ekstensi VSCode!

class Employee {}

void main() {
  // Setelah membuat model-nya, uncomment kode ini
  // Jalankan script dengan perintah:
  // dart bin/3.3.dart
  // nodemon --exec dart bin/3.3.dart

  // Employee employee = Employee.fromJson(jsonDecode(jsonString));
  // checker(employee);
}

// TODO: Kode dibawah ini tidak boleh di edit!
void checker(dynamic employee) {
  print(employee);
  List<bool> conditions = [
    employee.employeeName == "John Doe",
    employee.employeeAge == 30,
    employee.employeeDepartment == "IT",
    List<String>.from(employee.employeeSkills).toString() ==
        '[Java, Python, JavaScript]',
  ];

  if (conditions.contains(false)) {
    print("Jawaban salah!");
    return;
  }
  print("Correct answer!");
}
