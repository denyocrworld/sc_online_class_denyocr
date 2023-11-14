int faktorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * faktorial(n - 1);
  }
}

void main() {
  // 5 * 4 * 3 * 2 * 1
  // 20 * 6
  // 120
  print(faktorial(5));
  //5
  //4
  //    faktorial(4)
  //    faktorial(3)
  //    faktorial(2)
  //    faktorial(1)
  //    faktorial(0)
}
