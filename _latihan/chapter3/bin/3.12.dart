import 'dart:convert';

String jsonString = '''
{
   "studentName": "Bob Smith",
   "studentAge": 20,
   "courses": [
      {
         "courseName": "History",
         "instructor": "Professor Johnson",
         "grades": {
            "quiz1": 88,
            "quiz2": 75,
            "midtermExam": 92
         }
      },
      {
         "courseName": "English",
         "instructor": "Professor Adams",
         "grades": {
            "quiz1": 92,
            "quiz2": 85,
            "midtermExam": 88
         }
      },
      {
         "courseName": "Biology",
         "instructor": "Professor Williams",
         "grades": {
            "quiz1": 85,
            "quiz2": 90,
            "midtermExam": 78
         }
      }
   ]
}
''';

void main() {
  // Uncomment this code after creating the models
  // Run the script with the command:
  // dart bin/3.12.dart
  // nodemon --exec dart bin/3.12.dart

  // Student student = Student.fromJson(jsonDecode(jsonString));
  // checker(student);
}

void checker(dynamic student) {
  print(student);
  List<bool> conditions = [
    student.studentName == 'Bob Smith',
    student.studentAge == 20,
    student.courses.length == 3,
    student.courses[2].courseName == 'Biology',
    student.courses[0].grades.scores['quiz1'] == 88,
  ];

  if (conditions.contains(false)) {
    print('Jawaban salah!');
    return;
  }
  print('Correct answer!');
}
