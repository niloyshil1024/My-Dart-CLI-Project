void main() {
  int count = 0;

  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0) {
      continue;
    }

    String label;
    switch (i) {
      case 1 || 2 || 3 || 4 || 5 || 6 || 7:
        label = "small";
        break;
      case 8 || 9 || 10 || 11 || 12 || 13 || 14:
        label = "medium";
        break;
      default:
        label = "large";
    }

    print("Number $i: $label");
    count++;

    if (count == 10) {
      break;
    }
  }
}