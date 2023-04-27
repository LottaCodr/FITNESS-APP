import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/profile_button.dart';
import 'package:the_trainer/widgets/progressbar.dart';

class TheProfile extends StatefulWidget {
  const TheProfile({Key? key}) : super(key: key);

  @override
  State<TheProfile> createState() => _TheProfileState();
}

class _TheProfileState extends State<TheProfile> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(Icons.settings),
                    CircleAvatar(
                      radius: 50,
                    ),
                    Icon(Icons.notifications_none)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Lotanna Jason',
                  style: TextStyle(fontSize: 30),
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
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                          Text(
                            'Current',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                          Text(
                            'Target',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
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
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                    child: const Text(
                      'Log weight',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileButton(
                  title: 'Edit Profile',
                  icon: Icons.person_outline_sharp,
                ),
                const ProfileButton(
                    title: 'Downloaded Workouts', icon: Icons.save_alt),
                const ProfileButton(title: 'Saved Workouts', icon: Icons.save),
                const ProfileButton(title: 'Log Out', icon: Icons.output_sharp)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
