import 'dart:io';

void main(){
   var name = stdin.readLineSync()!;
   var isrunning = true;
 
 
 
  final Set<String> subject= {
    "Microprocessor",
    "Data Structure",
    "Object oriented",
    "Internet Programming",
    "Competitive Programming"
  };
  do {
     print("""=== Student Grader v1.0 ==
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
      break;
      case "8":
      isrunning = false;
      break;
    }
  }while(isrunning);
 
   const String tittle = "[=== Student Grader v1.0 ===]";
    print(tittle);
  
}