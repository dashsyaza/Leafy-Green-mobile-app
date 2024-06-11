import 'package:logger/logger.dart';

final Logger logger = Logger();

class AuthService {
  // Dummy user data for demonstration
  final Map<String, Map<String, String>> _dummyUsers = {};

  Future<User?> createUserWithEmailAndPassword(
      String name, String email, String password, String mobile) async {
    try {
      // Simulate user creation
      _dummyUsers[email] = {
        'name': name,
        'password': password,
        'mobile': mobile,
      };
      logger.i("User created: $email");
      return User(email: email, name: name, mobile: mobile);
    } catch (e) {
      logger.e("Unknown error: $e");
    }
    return null;
  }

  Future<User?> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      // Simulate user login
      final user = _dummyUsers[email];
      if (user != null && user['password'] == password) {
        logger.i("User logged in: $email");
        return User(email: email, name: user['name']!, mobile: user['mobile']!);
      } else {
        logger.e("Login failed for user: $email");
      }
    } catch (e) {
      logger.e("Unknown error: $e");
    }
    return null;
  }

  Future<void> signout() async {
    try {
      // Simulate user sign out
      logger.i("User signed out");
    } catch (e) {
      logger.e("Unknown error: $e");
    }
  }
}

class User {
  final String email;
  final String name;
  final String mobile;

  User({required this.email, required this.name, required this.mobile});
}
