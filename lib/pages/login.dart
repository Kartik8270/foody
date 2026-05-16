import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foody/pages/signup.dart';
import 'package:foody/pages/Bottom_Nav.dart';
import 'package:foody/pages/forgotpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = "";
  String password = "";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  userLogin() async {

    setState(() {
      isLoading = true;
    });

    try {

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login Successful"),
          backgroundColor: Colors.green,
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNav(),
        ),
      );

    } on FirebaseAuthException catch (e) {

      String message = "";

      if (e.code == 'user-not-found') {
        message = "No user found for that email";
      } else if (e.code == 'wrong-password') {
        message = "Wrong password provided";
      } else if (e.code == 'invalid-email') {
        message = "Invalid email";
      } else {
        message = e.message ?? "Login Failed";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Colors.red,
        ),
      );

    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [

              /// Gradient Background
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.deepOrange,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),

              /// White Bottom Background
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.7,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),

              /// Main UI
              Column(
                children: [

                  /// Logo
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 12,
                      left: 20,
                      right: 20,
                    ),
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 1.2,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 20),

                  /// Login Card
                  Center(
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),

                      child: Container(

                        width: MediaQuery.of(context).size.width / 1.15,

                        padding: EdgeInsets.all(25),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            /// Title
                            Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(height: 30),

                            /// Email Field
                            TextField(

                              controller: emailController,

                              decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email_outlined),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),

                            SizedBox(height: 20),

                            /// Password Field
                            TextField(

                              controller: passwordController,

                              obscureText: true,

                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.lock_outline),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),

                            SizedBox(height: 10),

                            /// Forgot Password
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ForgotPassword(),
                                    ),
                                  );

                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 25),

                            /// Login Button
                            GestureDetector(

                              onTap: () {
                                userLogin();
                              },

                              child: Container(

                                width: double.infinity,

                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                ),

                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12),
                                ),

                                child: Center(
                                  child: isLoading
                                      ? CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ),
                            ),

                            SizedBox(height: 25),

                            /// Signup Navigation
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text(
                                  "Don't have an account? ",
                                ),

                                GestureDetector(
                                  onTap: () {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUpPage(),
                                      ),
                                    );

                                  },

                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}