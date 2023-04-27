import 'package:flutter/material.dart';
import 'package:the_trainer/screens/challenges.dart';
import 'package:the_trainer/screens/profile_page.dart';
import 'package:the_trainer/widgets/chart/chart_container.dart';
import 'package:the_trainer/widgets/chart/the_barchart.dart';
import 'package:the_trainer/widgets/tagged_clip_container.dart';
import 'package:the_trainer/widgets/the_card.dart';
import 'package:the_trainer/widgets/the_circle.dart';
import 'package:the_trainer/widgets/the_text_row.dart';

import '../widgets/the_clip_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'DashBoard',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Scaffold(
                                appBar: AppBar(
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                ),
                                body: TheProfile(),
                              )));
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TheCircle(
                        mainText: '17',
                        the2ndText: 'workouts',
                        lastText: 'completed'),
                    TheCircle(
                        mainText: '245',
                        the2ndText: 'training',
                        lastText: 'hours'),
                    TheCircle(
                        mainText: '7',
                        the2ndText: 'accepted',
                        lastText: 'workouts'),
                  ],
                ),
                const SizedBox(height: 10),
                const TheCard(
                    workout: "Waist Workout",
                    percentage: 76,
                    buttonName: "Continue",
                    caloriesValue: 7),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Today Activity',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '2 hours workout  *  387 kcal  *  2.6km',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                    height: 300,
                    child: ChartContainer(
                        color: Colors.red, chart: BarChartContent())),
                const TheTextRow(
                    leftText: 'New Workouts', rightText: "See All"),
                const SizedBox(
                  height: 10,
                ),
                TheClipContainer(
                  myImage: Image.asset('assets/work.jpg'),
                  title: 'Get ready for Arms day',
                  subTitle: '231 Members - Medium level',
                ),
                const SizedBox(
                  height: 10,
                ),
                const TheTextRow(
                    leftText: 'Active Challenge', rightText: 'See All'),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TheChallenges()));
                  },
                  child: TaggedClippedContainer(
                    myImage: Image.asset('assets/maraton.jpg'),
                    title: 'Get ready to Maraton',
                    subTitle: '231 Members - Medium level',
                    tagText: '30 hrs left',
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
