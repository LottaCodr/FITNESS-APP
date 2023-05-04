import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:the_trainer/User%20_Auth/Sign_in.dart';
import 'package:the_trainer/widgets/profile_button.dart';
import 'package:the_trainer/widgets/progressbar.dart';

class TheProfile extends StatefulWidget {
  const TheProfile({Key? key}) : super(key: key);

  @override
  State<TheProfile> createState() => _TheProfileState();
}

class _TheProfileState extends State<TheProfile> {
  void signOut() async {
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Lotanna Jason',
                          style: TextStyle(fontSize: 26),
                        ),
                        Text(
                          'your@email.com',
                          style: TextStyle(color: Colors.grey),
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
                                color: Colors.grey),
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
                                color: Colors.white),
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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
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
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                    child: const Text(
                      'Log weight',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ProfileButton(
                  title: 'Edit Profile',
                  icon: Icons.person_outline_sharp,
                  myNavigator: () {},
                ),
                ProfileButton(
                  title: 'Downloads',
                  icon: Icons.save_alt,
                  myNavigator: () {},
                ),
                ProfileButton(
                  title: 'Favourites',
                  icon: Icons.favorite,
                  myNavigator: () {},
                ),
                ProfileButton(
                  title: 'Log Out',
                  icon: Icons.output_sharp,
                  myNavigator: () {
                    signOut();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
