import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CreateAccount());
}

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  // Function to show a dialog when login is successful
  void _showLoginSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Login Success"),
          content: const Text("You have successfully logged in!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: const EdgeInsets.all(44.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Enter your email..',
                ),
              ),
              const SizedBox(height: 34),
              const TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Enter your password..',
                ),
              ),
              const SizedBox(height: 34),
              ElevatedButton(
                onPressed: () {
                  _showLoginSuccessDialog(context); // Show success popup
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
