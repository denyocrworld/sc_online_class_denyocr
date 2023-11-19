import 'dart:convert';

String jsonString = '''
{
   "studentName": "Alice Johnson",
   "studentAge": 18,
   "courses": [
      {
         "courseName": "Mathematics",
         "instructor": "Professor Smith",
         "grades": {
            "exam1": 95,
            "exam2": 88,
            "finalExam": 92
         }
      },
      {
         "courseName": "Physics",
         "instructor": "Professor Adams",
         "grades": {
            "exam1": 90,
            "exam2": 85,
            "finalExam": 88
         }
      },
      {
         "courseName": "Computer Science",
         "instructor": "Professor Williams",
         "grades": {
            "assignment1": 92,
            "assignment2": 88,
            "assignment3": 95,
            "finalExam": 96
         }
      }
   ]
}
''';

void main() {
  // Uncomment this code after creating the models
  // Run the script with the command:
  // dart bin/3.11.dart
  // nodemon --exec dart bin/3.11.dart

  // Student student = Student.fromJson(jsonDecode(jsonString));
  // checker(student);
}

void checker(dynamic student) {
  print(student);
  List<bool> conditions = [
    student.studentName == 'Alice Johnson',
    student.studentAge == 18,
    student.courses.length == 3,
    student.courses[2].courseName == 'Computer Science',
    student.courses[0].grades.scores['exam1'] == 95,
  ];

  if (conditions.contains(false)) {
    print('Jawaban salah!');
    return;
  }
  print('Correct answer!');
}
