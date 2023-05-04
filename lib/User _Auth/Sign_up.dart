import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_trainer/User%20_Auth/Sign_in.dart';
import 'package:the_trainer/main.dart';
import 'package:the_trainer/widgets/MyTextField.dart';
import '../widgets/big_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  //create user
  Future signUP() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      //Get user id
      String userID = userCredential.user!.uid;

      //collect user's name and phoneNumber
      String name = nameController.text.trim();
      String phoneNumber = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      //Create a reference to the users collection in firestore
      CollectionReference userRef =
          FirebaseFirestore.instance.collection("users");

      //Create a new document in the users collection with the userID
      await userRef.doc(userID).set({
        'name': name,
        'phoneNumber': phoneNumber,
        'email': email,
        'password': password
      });

      //successful user creation
      redirectToSignInPage();
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print(e);
      }
//display error message to user
      Fluttertoast.showToast(
          msg: 'Failed to create account: ${e.message}',
          gravity: ToastGravity.BOTTOM,
          toastLength: Toast.LENGTH_SHORT);
    } finally {
      Navigator.pop(context);
    }
    //navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  //form validation
  bool validateForm() {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String phoneNumber = phoneController.text.trim();

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        phoneNumber.isEmpty) {
      Fluttertoast.showToast(
        msg: 'Please fill in the fields',
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
      );
    } else if (name.length < 3) {
      Fluttertoast.showToast(
        msg: 'Name must be at least 3 characters.',
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
      );
    } else if (phoneNumber.length < 11 || phoneNumber.length > 11) {
      Fluttertoast.showToast(
          msg: 'Invalid Phone number',
          gravity: ToastGravity.BOTTOM,
          toastLength: Toast.LENGTH_SHORT);
    } else if (!isValidEmail(email)) {
      Fluttertoast.showToast(
        msg: 'Invalid Email',
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
      );
    } else if (phoneNumber.length < 6) {
      Fluttertoast.showToast(
        msg: 'Must contain atleast 6 characters',
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
      );
    } else {
      Fluttertoast.showToast(
        msg: 'Your Account has been successfully created',
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_LONG,
      );
      return false;
    }
    return true;
  }

  //lets create a custom email validator
  bool isValidEmail(String email) {
    RegExp emailRegExp = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegExp.hasMatch(email);
  }

  //register the user
  void registerValidUser() {
    if (!validateForm()) {
      signUP();
    }
  }

  //redirect the user
  void redirectToSignInPage() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (e) => const SignIn()), (route) => true);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()));
                          },
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
                                letterSpacing: 2),
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
                            myTextController: emailController,
                            hint: 'Lotannajason@example.com',
                            obscureText: false),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            icon: Icons.phone,
                            label: 'Phone Number',
                            myTextType: TextInputType.phone,
                            myTextController: phoneController,
                            hint: '+234-000-000-000',
                            obscureText: false),
                        const SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            icon: passwordController == passwordController
                                ? Icons.lock
                                : Icons.lock_outline,
                            label: 'Password',
                            myTextType: TextInputType.text,
                            myTextController: passwordController,
                            hint: '*************',
                            obscureText: true),
                        const SizedBox(
                          height: 15,
                        ),
                        BigButton(
                          myNavigation: () {
                            registerValidUser();
                          },
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
                                size: 35,
                              ),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '|',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 40),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.gpp_maybe,
                                color: Colors.green,
                                size: 33,
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
                                        builder: (context) => const SignIn()));
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
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
