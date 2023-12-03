extension CustomStringExtension on String {
  toCreditCardFormat() {
    var str = this;
    var newStr = "";
    for (var i = 0; i < str.length; i++) {
      var s = str[i];
      newStr += s;
      var pIndex = i + 1;
      if (pIndex % 4 == 0) {
        newStr += " ";
      }
    }

    print("Convert to $newStr");
    // str = newStr;
    return newStr;
  }
}
