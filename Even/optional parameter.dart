void greet(String name, [String? msg]) {
  print("$name $msg");
}

void main(){
  greet("Niloy");
  greet("Niloy", "Good morning");
}

// name mandatory but msg(optional) mandatory na