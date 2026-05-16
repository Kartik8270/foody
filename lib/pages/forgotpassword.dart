import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController emailController = TextEditingController();
 resetPassword() async {

  try {

    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: emailController.text.trim(),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Password reset email sent!"),
      ),
    );

  } on FirebaseAuthException catch (e) {

    if (e.code == "user-not-found") {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("No user found for that email."),
        ),
      );

    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message!),
        ),
      );
    }
  }
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              /// Back Button
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },

                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
              ),

              SizedBox(height: 80),

              /// Title
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              /// Subtitle
              Text(
                "Enter your email address to reset your password",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
                ),
              ),

              SizedBox(height: 40),

              /// Email Field
              TextField(

                controller: emailController,

                decoration: InputDecoration(
                  hintText: "Email",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  prefixIcon: Icon(Icons.email),
                ),
              ),

              SizedBox(height: 30),

              /// Reset Button
              SizedBox(

                width: double.infinity,

                child: ElevatedButton(

                  onPressed: () {
                    resetPassword();

                    /// Reset Password Logic Here

                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,

                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}