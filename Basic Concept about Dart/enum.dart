void main()
{
  final gender = Gender.Male;
  switch (gender){
    case Gender.Male:
    print("Gender is Male.");
    break;
  
    case Gender.Female:
    print("Gender is Female.");
    break;

    default:
    print("Gender is Unknown");
  }
  

}

enum Gender{ Male,Female,Unknown}