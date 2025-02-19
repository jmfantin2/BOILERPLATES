import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService authService = AuthService();

    return Scaffold(
      appBar: AppBar(title: const Text("Sign In")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final user = await authService.signInWithGoogle();
            if (user != null) {
              debugPrint("Signed in as ${user.displayName}");
            }
          },
          child: const Text("Sign in with Google"),
        ),
      ),
    );
  }
}
