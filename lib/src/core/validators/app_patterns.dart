class AppPatterns {
  static String hashtagPattern() => r'\B[#]+([\w]+)\b';
  static String userPattern() => r'\B[@]+([\w]+)\b';
  static String currencyPattern() => r'\B[$]+([\w]+)\b';
}
