import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // First part with white background and centered text
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'DoveWing',
                  style: GoogleFonts.inika(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: const Color.fromARGB(255, 5, 119, 208),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Hi there!',
                  style: GoogleFonts.inika(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color.fromARGB(255, 5, 119, 208),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Let's get started",
                  style: GoogleFonts.inika(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: const Color.fromARGB(255, 5, 119, 208),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:40),
          // Second part with blue background and rounded borders
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF45A5FD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Username TextField
                  const  TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color:  Color.fromARGB(255, 5, 119, 208)),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 5, 119, 208)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Password TextField
                  const  TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Color.fromARGB(255, 5, 119, 208)),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 5, 119, 208)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none,
                        ),
                       // obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                         Navigator.pushNamed(context, '/home');
                        // Handle login logic
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.inika(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: const Color.fromARGB(255, 5, 119, 208),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
              
                    // OR separator
                   const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'OR',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                         Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height:20),
                    // Create an Account Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                        style: ElevatedButton.styleFrom(
                          side:const BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        backgroundColor: Colors.transparent,
                      ),
                      child: Text(
                        'Create Account',
                        style: GoogleFonts.inika(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
