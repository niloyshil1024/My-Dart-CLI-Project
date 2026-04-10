import 'dart:io';

void main(){
List<String> students = [
  "Ayaan", "Sara", "Rafi", "Nadia", "Zara"
];
students.remove("Ayaan");
// Print ALL students — one line, any class size:
for (String s in students) { print(s); }

// Sort them — one line:
students.sort();

}
