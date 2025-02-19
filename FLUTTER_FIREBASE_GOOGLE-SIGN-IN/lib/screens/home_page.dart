import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // ✅ Added key

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome, ${user?.displayName ?? 'User'}"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout), // ✅ Used const
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (user?.photoURL != null)
              CircleAvatar(
                backgroundImage: NetworkImage(user!.photoURL!),
                radius: 40,
              ),
            const SizedBox(height: 20), // ✅ Used const
            Text(
              "Signed in as ${user?.email ?? 'unknown'}",
              style: const TextStyle(fontSize: 18), // ✅ Used const
            ),
          ],
        ),
      ),
    );
  }
}
