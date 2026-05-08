import 'dart:io';

void main(){
   
   var isrunning = true;
 
 const String title = "[=== Student Grader v1.0 ===]";
 
  final Set<String> availableSubject= {
    "Microprocessor",
    "Data Structure",
    "Object oriented",
    "Internet Programming",
    "Competitive Programming"
  };
   var students = [];
  do {
    
    
     print("""$title
1. Add Student
2. Record Score
3. Add Bonus Points
4. Add Comment
5. View All Students
6. View Report Card
7. Class Summary
8. Exit

Choose an option:
  """);
   
  
    var choice = stdin.readLineSync()!;
    switch(choice){
      case "1":
      print("Enter the student name : ");
    var name = stdin.readLineSync()!;
      Map <String, dynamic> student = {
 "name" : name,
 "Scores" : [],
 "Subjects" : {...availableSubject},
 "bonus" : null,
 "comment" : null

 };
 students.add(student);
      break;
      case "2":
        // 1. Check kora student ache kina
        if (students.isEmpty) {
          print("Add student");
        } else {
          // 2. Numbered list dekhano (Indexed for loop)
          print("--- Student List ---");
          for (int i = 0; i < students.length; i++) {
            print("${i + 1}. ${students[i]['name']}");
          }

          // 3. Student select kora
          stdout.write("Select student number : ");
          int index = int.parse(stdin.readLineSync()!) - 1;

          // 4. Subject selection
          var selectedStudent = students[index];
          print("Available Subjects: ${selectedStudent['Subjects']}");
          stdout.write("Enter the subject name: ");
          String sub = stdin.readLineSync()!;

          // 5. Score Validation (While loop - easy version)
          double score = -1; 
          while (score < 0 || score > 100) {
            stdout.write("$sub er score din (0-100): ");
            score = double.parse(stdin.readLineSync()!);

            if (score < 0 || score > 100) {
              print("wrong score! pls try again...");
            }
          }

          // 6. List-e add kora
          selectedStudent["Scores"].add(score);
          print("Score successfully add hoyeche!");
        }
        break;
        case "3":
         if (students.isEmpty) {
          print("Add student");
        } else {
          // 2. Numbered list dekhano (Indexed for loop)
          print("--- Student List ---");
          for (int i = 0; i < students.length; i++) {
            print("${i + 1}. ${students[i]['name']}");
          }

          // 3. Student select kora
          stdout.write("Select student number ");
          int index = int.parse(stdin.readLineSync()!) - 1;

        
        var selectedStudent = students[index];
        stdout.write("Enter bonus (1-10): ");
        int bonus = int.parse(stdin.readLineSync()!);
        if(bonus < 1 || bonus > 10){
          print("Invalid bonus!");

        }else{
          if(selectedStudent["bonus"]!= null){
            print("Bonus already added!");
          }else{
            selectedStudent["bonus"] ??= bonus;
            print("Bonus added successfully!");
          }
        }
        }
        break;
        case"4":
        
      if (students.isEmpty) {
       print("Add student first");
      } else {

      print("--- Student List ---");
    for (int i = 0; i < students.length; i++) {
    print("${i + 1}. ${students[i]['name']}");
    }

     stdout.write("Select student number: ");
     int index = int.parse(stdin.readLineSync()!) - 1;

    var selectedStudent = students[index];

   stdout.write("Enter comment: ");
  String comment = stdin.readLineSync()!;

   selectedStudent["comment"] = comment;

   print("Comment added successfully!");
}

break;
case "5":

if (students.isEmpty) {
  print("No students found");
} else {

  print("---- All Students ----");

  for (var student in students) {

    var tags = [
      student["name"],
      "${student["Scores"].length} scores",
      if (student["bonus"] != null) "⭐ Has Bonus",
    ];

    print(tags.join(" | "));
  }

}

break;
case "6":

if (students.isEmpty) {
  print("No students found");
} else {

  print("--- Student List ---");
  for (int i = 0; i < students.length; i++) {
    print("${i + 1}. ${students[i]['name']}");
  }

  stdout.write("Select student number: ");
  int index = int.parse(stdin.readLineSync()!) - 1;

  var student = students[index];

  // 1. Calculate raw average
  double sum = 0;

  for (var score in student["Scores"]) {
    sum += score;
  }

  double rawAvg = student["Scores"].isEmpty 
      ? 0 
      : sum / student["Scores"].length;

  // 2. Add bonus
  double finalAvg = rawAvg + (student["bonus"] ?? 0);

  // 3. Cap at 100
  if (finalAvg > 100) {
    finalAvg = 100;
  }

  // 4. Grade calculation
  String grade;

  if (finalAvg >= 90) {
    grade = "A";
  } else if (finalAvg >= 80) {
    grade = "B";
  } else if (finalAvg >= 70) {
    grade = "C";
  } else if (finalAvg >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }

  // 5. Comment display
  String comment =
      student["comment"]?.toUpperCase() ?? "No comment provided";

  // 6. Report card print
  print("""
╔══════════════════════════════╗
║       REPORT CARD            ║
╠══════════════════════════════╝
║  Name:    ${student["name"]}
║  Scores:  ${student["Scores"]}
║  Bonus:   +${student["bonus"] ?? 0}
║  Average: ${finalAvg.toStringAsFixed(1)}
║  Grade:   $grade
║  Comment: $comment
╚══════════════════════════════╝
""");

}

break;
case "7":

if (students.isEmpty) {
  print("No students found");
} else {

  int totalStudents = students.length;
  double totalAvg = 0;

  double highest = 0;
  double lowest = 100;

  int passCount = 0;

  Set<String> gradeSet = {};

  for (var student in students) {

    var scores = student["Scores"];

    double sum = 0;

    for (var s in scores) {
      sum += s;
    }

    double average =
        scores.isEmpty ? 0 : sum / scores.length;

    average += (student["bonus"] ?? 0);

    if (average > 100) average = 100;

    totalAvg += average;

    // highest lowest
    if (average > highest) highest = average;
    if (average < lowest) lowest = average;

    // pass count (logical operator use)
    if (scores.isNotEmpty && average >= 60) {
      passCount++;
    }

    // grade calculate
    String grade;

    if (average >= 90) {
      grade = "A";
    } else if (average >= 80) {
      grade = "B";
    } else if (average >= 70) {
      grade = "C";
    } else if (average >= 60) {
      grade = "D";
    } else {
      grade = "F";
    }

    gradeSet.add(grade);
  }

  double classAverage = totalAvg / totalStudents;

  // collection for
  var summaryLines = [
    for (var s in students)
      "${s["name"]}: ${s["Scores"]}"
  ];

  print("""
╔══════════════════════════════╗
║       CLASS SUMMARY          ║
╠══════════════════════════════╝
║ Total Students: $totalStudents ||
║ Class Average: ${classAverage.toStringAsFixed(1)}||
║ Highest Avg : ${highest.toStringAsFixed(1)}||
║ Lowest Avg  : ${lowest.toStringAsFixed(1)}||
║ Passing     : $passCount||
║ Grades Seen : $gradeSet||
╚══════════════════════════════╝
""");

}

break;
      case "8":
      isrunning = false;
      break;
      default:
      print("Invalid");
    }
  }while(isrunning);
 

 
   
   
  
}