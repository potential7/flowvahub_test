import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'login.dart';
import '../provider/auth_provider.dart';
import '../../core/constant/image_constant.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;
  bool loading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignup() async {
    if (!mounted) return; // safety check

    final auth = Provider.of<AuthProvider>(context, listen: false);

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email and password cannot be empty")),
      );
      return;
    }

    setState(() => loading = true);

    final result = await auth.signUp(email: email, password: password);

    if (!mounted) return;

    setState(() => loading = false);

    if (result) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Signup successful!")));

      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginInPage()));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Signup failed")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(color: const Color(0xFFF3D4D4)), // background color

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImageAssets.flow, width: 120),
                Image.asset(ImageAssets.flow, width: 120),
                Image.asset(ImageAssets.flow, width: 120),
              ],
            ),

            Positioned(
              top: 140,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRect(
                    child: Align(
                      alignment: Alignment.topRight,
                      widthFactor: 0.4,
                      child: Image.asset(
                        ImageAssets.flow,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // CENTER FULL IMAGE
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(ImageAssets.flow, fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(ImageAssets.flow, fit: BoxFit.cover),
                  ),

                  // RIGHT CUT IMAGE
                  ClipRect(
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: 0.4,
                      child: Image.asset(
                        ImageAssets.flow,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Container(color: Colors.white.withOpacity(0.4)),
              ),
            ),

            Positioned(
              top: 220,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 4,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    const Text(
                      'Continue to Sign Up',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Let\'s get you started.',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email Address',
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: obscurePassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 10, left: 15),
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(
                                () => obscurePassword = !obscurePassword,
                              );
                            },
                            child: Icon(
                              obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    GestureDetector(
                      onTap: loading ? null : _handleSignup,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: const Color(0xffEEDCFF)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),

                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 18,
                                      spreadRadius: -18,
                                      offset: Offset(0, -15),
                                    ),
                                  ],
                                ),
                                foregroundDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white.withOpacity(0.15),
                                      Colors.transparent,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                child: Center(
                                  child: loading? const CircularProgressIndicator(color:  Colors.white, strokeWidth: 2,):Text(
                                    'Continue',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Center(child: Text('OR')),
                    const SizedBox(height: 20),

                    _socialButton(
                      icon: ImageAssets.google,
                      title: "Continue with Google",
                    ),

                    const SizedBox(height: 12),

                    _socialButton(
                      icon: ImageAssets.apple,
                      title: "Continue with Apple",
                    ),

                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LoginInPage()),
                            );
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Color(0xff9013FE),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Center(
                      child: Text(
                        'By continuing you agree to the Rules and Policy',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),

                    const SizedBox(height: 300),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialButton({required String icon, required String title}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: const Color(0xffEEDCFF)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.white,
                Color(0xffF3F3F3),
              ],
              stops: [0.0, 0.4, 1.0],
            ),

            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: -11,
                offset: Offset(5, 10),
              ),
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: -11,
                offset: Offset(-5, 10),
              ),
            ],
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                SvgPicture.asset(icon),
                const SizedBox(width: 80),
                 Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
