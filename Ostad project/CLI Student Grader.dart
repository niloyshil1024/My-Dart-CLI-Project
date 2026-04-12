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
          stdout.write("Select student number ");
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
      case "8":
      isrunning = false;
      break;
      default:
      print("Invalid");
    }
  }while(isrunning);
 

 
   
   
  
}