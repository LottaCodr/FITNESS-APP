import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:the_trainer/User%20_Auth/Sign_in.dart';
import 'package:the_trainer/screens/EditProfile.dart';
import 'package:the_trainer/screens/Settings.dart';
import 'package:the_trainer/widgets/profile_button.dart';
import 'package:the_trainer/widgets/progressbar.dart';
import 'package:get/get.dart';

import 'Payment_System/PayMe.dart';

class TheProfile extends StatefulWidget {
  const TheProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<TheProfile> createState() => _TheProfileState();
}

class _TheProfileState extends State<TheProfile> {
  User? user = FirebaseAuth.instance.currentUser;

  //add collection name
  CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => SignIn()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: StreamBuilder<DocumentSnapshot>(
              stream: usersCollection.doc(user?.uid).snapshots(),
              builder: (context, streamSnapshot) {
                if (streamSnapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                }
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(children: [
                          ClipOval(
                            clipBehavior: Clip.hardEdge,
                            child: CircleAvatar(
                              radius: 80,
                              child: Image.asset(
                                'assets/nin.jpg',
                                fit: BoxFit.cover,
                                width: 160,
                                alignment: Alignment.topRight,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 5,
                              right: 5,
                              child: Container(
                                height: 43,
                                width: 43,
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      color: Colors.red,
                                      blurRadius: 7,
                                      spreadRadius: 3)
                                ], shape: BoxShape.circle, color: Colors.white),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.red,
                                  ),
                                ),
                              ))
                        ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              streamSnapshot.data!['name'],
                              style: const TextStyle(fontSize: 26),
                            ),
                            Text(
                              streamSnapshot.data!['email'],
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: 400,
                      height: 135,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.person_pin_sharp)
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const VerticalProgressBar(progress: 0.9),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Start',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'Current',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'Target',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '68kg',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '56kg',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                '52kg',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                              title: const Text(
                                  'Sorry! This Feature is unavailable at the moment.'),
                              contentPadding: const EdgeInsets.all(12),
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('close'))
                              ],
                            ),
                          );
                        },
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        child: const Text(
                          'Log weight',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ProfileButton(
                      title: 'Edit Profile',
                      icon: Icons.person_outline_sharp,
                      myNavigator: () {
                        Get.to(const EditProfile(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 650));
                      },
                    ),
                    ProfileButton(
                      title: 'Downloads',
                      icon: Icons.save_alt,
                      myNavigator: () {},
                    ),
                    ProfileButton(
                      title: 'Settings',
                      icon: Icons.settings,
                      myNavigator: () {
                        Get.to(
                          const SettingsPage(),
                          transition: Transition.fade,
                          duration: const Duration(milliseconds: 650),
                        );
                      },
                    ),
                    ProfileButton(
                      title: 'Favourites',
                      icon: Icons.favorite,
                      myNavigator: () {
                        Get.to(
                          const PayMe(),
                          transition: Transition.fade,
                          duration: const Duration(milliseconds: 650),
                        );
                      },
                    ),
                    ProfileButton(
                      title: 'Log Out',
                      icon: Icons.output_sharp,
                      myNavigator: () {
                        Get.to(signOut(),
                            transition: Transition.fade,
                            duration: const Duration(
                              milliseconds: 650,
                            ));
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
