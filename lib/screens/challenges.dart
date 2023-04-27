import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/tagged_clip_container.dart';
import 'package:the_trainer/widgets/theList.dart';

class TheChallenges extends StatefulWidget {
  const TheChallenges({Key? key}) : super(key: key);

  @override
  State<TheChallenges> createState() => _TheChallengesState();
}

class _TheChallengesState extends State<TheChallenges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenges'),
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Active Challenges',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TaggedClippedContainer(
                  myImage: Image.asset('assets/maraton.jpg'),
                  title: 'Get ready to Marathon',
                  subTitle: '231 Members - Medium level',
                  tagText: '30 hrs left',
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Marathon Challenge is a logistical and physical challenges '
                  'to run seven marathons on seven continents in seven days.',
                  textScaleFactor: 1.15,
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Your Stats',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: const [
                      TheList(
                          myIcon: Icons.calendar_month,
                          title: 'Days Running',
                          subTitle: "03.01.2023 - 11.01.2023",
                          trailing: '7'),
                      TheList(
                          myIcon: Icons.run_circle_outlined,
                          title: 'Kilometers Run',
                          subTitle: "03.01.2023 - 11.01.2023",
                          trailing: '67.1'),
                      TheList(
                          myIcon: Icons.gpp_good,
                          title: 'Tasks Completed',
                          subTitle: '03.01.203 - 11.01.2023',
                          trailing: '11')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
