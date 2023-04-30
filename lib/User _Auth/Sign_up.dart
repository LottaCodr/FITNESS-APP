import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_trainer/User%20_Auth/Sign_in.dart';
import 'package:the_trainer/widgets/MyTextField.dart';
import 'package:the_trainer/widgets/navbar.dart';

import '../widgets/big_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Stack(children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/work.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 35,
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        MyTextField(
                            icon: Icons.person_outline_sharp,
                            label: 'Full Name',
                            myTextType: TextInputType.text,
                            myTextController: nameController,
                            hint: 'Lotanna Chuka',
                            obscureText: false),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            icon: Icons.email_outlined,
                            label: 'Email',
                            myTextType: TextInputType.emailAddress,
                            myTextController: nameController,
                            hint: 'Lotannajason@example.com',
                            obscureText: false),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            icon: Icons.phone,
                            label: 'Phone Number',
                            myTextType: TextInputType.phone,
                            myTextController: emailController,
                            hint: '+234-000-000-000',
                            obscureText: false),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            icon: Icons.lock,
                            label: 'Password',
                            myTextType: TextInputType.text,
                            myTextController: passwordController,
                            hint: '*************',
                            obscureText: true),
                        const SizedBox(
                          height: 10,
                        ),
                        BigButton(
                          myNavigation: () {},
                          myText: 'Sign Up',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Center(
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Center(
                          child: Text(
                            'Continue with',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 45,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '|',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 50),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.gpp_maybe,
                                color: Colors.green,
                                size: 43,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SignIn()));
                              },
                              child: const Text(
                                'Sign in',
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
