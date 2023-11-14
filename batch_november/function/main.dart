void printYellow(String message) {
  print('\x1B[33m$message\x1B[0m');
  print("--------------------");
}

void printRed(String message) {
  print('\x1B[31m$message\x1B[0m');
  print("--------------------");
}

String getPurpleString(String message) {
  return '\x1B[35m$message\x1B[0m';
}

void main() {
  // printYellow("Hallo nama saya Deny");
  // printRed("Bogor");
  // printPurple("ID Saya: 1000");
  // printPurple("Total: 15000");

  var purpleString = getPurpleString("Hello world");
  print(purpleString);
}
