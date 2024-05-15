bool isEmailValid(String email) {
  final RegExp emailRegExp =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  return emailRegExp.hasMatch(email);
}

bool isPasswordValid(String password) {
  return password.length >= 6;
}
