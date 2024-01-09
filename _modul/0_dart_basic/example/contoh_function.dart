int faktorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * faktorial(n - 1);
  }
}

void main() {
  print(faktorial(5));

  //5 * 4 * 3 * 2 * 1
  // 20 * 3 = 60 * 2 = 120 * 1 = 120
}
