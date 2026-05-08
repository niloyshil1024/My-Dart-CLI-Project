void main() {
  String connection = 'waiting';
  // if (connection == 'connected') {
  //   print("connected");
  // } else if (connection == 'waiting') {
  //   print("waiting");
  // } else {
  //   print("disconnected");
  // }
  switch (connection) {
    case 'connected':
      print("connected");
      break;
    case 'waiting':
      print("waiting");
      break;

    default:
      print('disconnected');
  }
}
