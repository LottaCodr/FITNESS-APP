import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/MyTextField.dart';
import '../widgets/big_button.dart';
import 'Sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Stack(
            children: [
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
                              'WELCOME',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 7,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Center(
                            child: Text(
                              'Sign in to continue',
                              style: TextStyle(
                                fontSize: 17,

                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          MyTextField(
                              icon: Icons.email_outlined,
                              label: 'Email',
                              myTextType: TextInputType.emailAddress,
                              myTextController: emailController,
                              hint: 'Lotannajason@example.com',
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
                            height: 80,
                          ),
                          BigButton(
                            myNavigation: () {},
                            myText: 'Sign In',
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
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '|',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 50),
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
                                "Don't have an account?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                },
                                child: const Text(
                                  'Sign Up',
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 60,)
                        ],
                      ),
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
