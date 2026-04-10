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
      case "8":
      isrunning = false;
      break;
      default:
      print("Invalid");
    }
  }while(isrunning);
 

 
   
   
  
}