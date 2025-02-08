import 'package:flutter/material.dart';

void main() {
  runApp(SignUpApp());
}

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? selectedRole;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      if (passwordController.text != confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Passwords do not match!")),
        );
        return;
      }
      // Perform Registration Logic
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Registered Successfully!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // Worker Image
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3069/3069176.png',
                  height: 100,
                ),
                const SizedBox(height: 10),

                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text("Create your account"),
                const SizedBox(height: 20),

                // Select Role Dropdown
                DropdownButtonFormField<String>(
                  value: selectedRole,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  hint: const Text("Select Your Role"),
                  items: ["Worker", "Employer"].map((role) {
                    return DropdownMenuItem(value: role, child: Text(role));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedRole = value;
                    });
                  },
                  validator: (value) =>
                  value == null ? "Please select a role" : null,
                ),

                const SizedBox(height: 10),

                // Username Field
                CustomTextField(
                  controller: usernameController,
                  icon: Icons.person,
                  hintText: "Username",
                  validator: (value) =>
                  value!.isEmpty ? "Username cannot be empty" : null,
                ),

                // Email Field
                CustomTextField(
                  controller: emailController,
                  icon: Icons.email,
                  hintText: "Email",
                  validator: (value) {
                    if (value!.isEmpty) return "Email cannot be empty";
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),

                // Password Field
                CustomTextField(
                  controller: passwordController,
                  icon: Icons.lock,
                  hintText: "Password",
                  obscureText: true,
                  validator: (value) => value!.length < 6
                      ? "Password must be at least 6 characters"
                      : null,
                ),

                // Confirm Password Field
                CustomTextField(
                  controller: confirmPasswordController,
                  icon: Icons.lock,
                  hintText: "Confirm Password",
                  obscureText: true,
                  validator: (value) =>
                  value!.isEmpty ? "Confirm your password" : null,
                ),

                const SizedBox(height: 15),

                // Register Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: _register,
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                const Text("Or", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 10),

                // Google Signup Button
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://cdn-icons-png.flaticon.com/512/300/300221.png',
                        height: 20,
                      ),
                      const SizedBox(width: 10),
                      const Text("Continue with Google"),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Already have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Login",
                          style: TextStyle(color: Colors.orange)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;

  const CustomTextField({
    required this.controller,
    required this.icon,
    required this.hintText,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.orange),
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
