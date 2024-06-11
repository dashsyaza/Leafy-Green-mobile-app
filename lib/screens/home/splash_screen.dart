import 'package:flutter/material.dart';
import 'package:lg/screens/authenticate/register.dart';
import 'package:lg/screens/authenticate/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToReqScreen();
  }

  Future<void> _navigateToReqScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    // Stay on SplashScreen, and show login/register options
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/app_intro.jpg'), // Update with your image path
            fit: BoxFit.cover, // This ensures the image covers the entire screen
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'LeafyGreen', // Update with your app's name
                style: TextStyle(
                  fontFamily: 'Sf',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10), // Adding space
              const Text(
                'Your Gardening Assistant', // Your caption goes here
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30), // Adding more space
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
                  );
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 10), // Adding space
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupScreen()),
                  );
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
