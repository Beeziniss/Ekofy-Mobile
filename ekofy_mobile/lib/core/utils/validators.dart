class Validators {
  static String? isEmailValid(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? isPasswordValid(String? password) {
    if (password == null || password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (password.trim().isEmpty) {
      return 'Password is required';
    }
    return null;
  }
}
