import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/chart/chart_container.dart';
import 'package:the_trainer/widgets/chart/the_barchart.dart';
import 'package:the_trainer/widgets/the_card.dart';
import 'package:the_trainer/widgets/the_circle.dart';
import 'package:fl_chart/fl_chart.dart';

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
                    children: const [
                      Text(
                        'DashBoard',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35,
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
                SizedBox(
                    height: 200,
                    child: ChartContainer(
                        title: "Track Your Day",
                        color: Colors.red,
                        chart: BarChartContent())
                    // LineChart(
                    //   LineChartData(
                    //     //defining the chart data here
                    //     lineBarsData: [
                    //       LineChartBarData(
                    //         spots: [
                    //           FlSpot(0, 0),
                    //           FlSpot(1, 5),
                    //           FlSpot(2, 3),
                    //           FlSpot(3, 7),
                    //           FlSpot(4, 10),
                    //         ],
                    //
                    //         //customizing the appearance of the line
                    //         color: Colors.red,
                    //         barWidth: 2
                    //       ),
                    //     ],
                    //
                    //     //customizing the x and y axes
                    //     titlesData: FlTitlesData(
                    //       bottomTitles: AxisTitles(
                    //         sideTitles: SideTitles(
                    //           showTitles: true,
                    //
                    //         )
                    //       )
                    //     )
                    //   ),
                    // ),
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'New Workouts',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See All'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Stack(children: [
                  Positioned(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/work.jpg"),
                  ),
                  const Positioned(
                      bottom: 10,
                      left: 20,
                      child: Text(
                        'Get ready for arms day',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
