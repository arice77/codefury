import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool _isSignUp = true;

  void _togglePage() {
    setState(() {
      _isSignUp = !_isSignUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color textColor = Color.fromRGBO(113, 31, 123, 1);

    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 247, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (_isSignUp) ...[
                const SizedBox(height: 25),
                Text(
                  'BE PREPARED',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: textColor),
                  textAlign: TextAlign.center,
                ),
                Image.asset('assets/logo.png', height: 100, width: 100),
                const SizedBox(height: 20),
                const Text('SIGN UP', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black), textAlign: TextAlign.center),
                const SizedBox(height: 20),
                _buildTextField('Name', 'Enter your name'),
                const SizedBox(height: 10),
                _buildTextField('Email', 'Enter your email'),
                const SizedBox(height: 10),
                _buildTextField('Password', 'Enter your password', obscureText: true),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle forgot password action
                      },
                      child:  Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: textColor),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                _buildDividerWithText("Or Sign Up With"),
                const SizedBox(height: 10),
                _buildSocialButton('assets/google_logo.png', 'Google'),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: textColor,
                    foregroundColor: Colors.white,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                  ),
                  onPressed: () {
                    // Handle sign up action
                  },
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: _togglePage,
                  child:  Text('Already have an account? Login', style: TextStyle(color: textColor)),
                ),
              ] else ...[
                const SizedBox(height: 25),
                Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: textColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Image.asset('assets/logo.png', height: 100, width: 100),
                SizedBox(height: 10,),

                const Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black), textAlign: TextAlign.center),
                const SizedBox(height: 20),
                _buildTextField('Email', 'Enter your email'),
                const SizedBox(height: 10),
                _buildTextField('Password', 'Enter your password', obscureText: true),
                const SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle forgot password action
                      },
                      child:  Text('Forgot Password?', style: TextStyle(color: textColor)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildDividerWithText("Or Sign In With"),
                SizedBox(height: 20,),
                _buildSocialButton('assets/google_logo.png', "Google"),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: textColor,
                    foregroundColor: Colors.white,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                  ),
                  onPressed: () {
                    // Handle login action
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: _togglePage,
                  child:  Text('Don\'t have an account? Sign Up', style: TextStyle(color: textColor)),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hintText, {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(113, 31, 123, 1)),
        ),
        const SizedBox(height: 10),
        ElevatedTextField(hintText: hintText, controller: TextEditingController(), obscureText: obscureText),
      ],
    );
  }

  Widget _buildDividerWithText(String text) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 13.0),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialButton(String imagePath, String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      ),
      onPressed: () {
        // Handle social button action
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 30.0,
            height: 30.0,
          ),
          SizedBox(width: 8.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class ElevatedTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  ElevatedTextField({
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
