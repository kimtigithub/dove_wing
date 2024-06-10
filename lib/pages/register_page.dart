import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
   
 @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // DoveWing Text
            const SizedBox(height: 40),
            Text(
              'DoveWing',
              style: GoogleFonts.inika(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: const Color.fromARGB(255, 5, 119, 208),
              ),
            ),
            const SizedBox(height: 40),
            // First Name Input
            const TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: TextStyle(color: Color.fromARGB(255, 5, 119, 208)),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 5, 119, 208)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
            
              ),
            ),
            const SizedBox(height: 30),
            // Email Input
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Color.fromARGB(255, 5, 119, 208)),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 5, 119, 208)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Password Input
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color.fromARGB(255, 5, 119, 208)),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 5, 119, 208)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
               // obscureText: true,
               enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 5, 119, 208)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Terms and Conditions Checkbox
            CheckboxListTile(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
              title: const Text('Agree with terms and conditions'),
              activeColor: const Color.fromARGB(255, 5, 119, 208),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.white,
            ),
            const Spacer(),
            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                  Navigator.pushNamed(context, '/login');
                // Handle registration logic
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                backgroundColor: const Color.fromARGB(255, 5, 119, 208),
              ),
              child: Text(
                'Sign Up',
                style: GoogleFonts.inika(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
