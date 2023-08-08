class Validators {
  static bool validateTextIsNotEmpty(String? text) {
    return text != null && text.isNotEmpty;
  }

  // validate text if grater than or equal to given length
  static bool validateTextLength(String text, int length) {
    return text.trim().length >= length;
  }
}
