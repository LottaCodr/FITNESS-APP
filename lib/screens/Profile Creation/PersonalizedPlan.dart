import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_trainer/User%20_Auth/Sign_up.dart';
import 'package:the_trainer/widgets/navbar.dart';

class MyPlan extends StatefulWidget {
  const MyPlan({Key? key}) : super(key: key);

  @override
  State<MyPlan> createState() => _MyPlanState();
}

class _MyPlanState extends State<MyPlan> {
  //TabController _tabController = TabController(length: 2, vsync: this )

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Get.to(SignUpPage(),
                      transition: Transition.fade,
                      duration: Duration(seconds: 1));
                },
                icon: const Icon(Icons.arrow_back_ios)),
            TextButton(
                onPressed: () {
                  Get.to(MyBottomNavBar(),
                      transition: Transition.fadeIn,
                      duration: Duration(seconds: 1));
                },
                child: const Text('Skip')),
          ],
        ),
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Text(
                'Lets make your personalization plan',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  fontFamily: "Futura",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: TabBar(
                  splashBorderRadius: BorderRadius.circular(12),
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.black26,
                  dividerColor: Colors.red,
                  indicator:
                  const CircleTabIndicator(color: Colors.red, radius: 5),
                  tabs: const [
                    Text('lbs, ft'),
                    Text('kg, cm'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Gender',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 3,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('Male'),
                                        Text('Female'),
                                        Text('Others'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Height',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 5,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('4'),
                                        Text('5'),
                                        Text('6'),
                                        Text('7'),
                                        Text('8'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Weight',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 8,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('100'),
                                        Text('120'),
                                        Text('150'),
                                        Text('220'),
                                        Text(' 180'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Fitness level',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 8,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('Beginner'),
                                        Text(
                                          'Indermediate',
                                          textScaleFactor: 0.8,
                                        ),
                                        Text('Advanced'),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Center(
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Get.to(MyBottomNavBar(),
                                                transition: Transition.fadeIn,
                                                duration:Duration(seconds: 1));
                                          },
                                          child: Text('Continue'))),
                                )
                              ],
                            ),
                          ]
                        //    Text('Page 1'),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Gender',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 3,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('Male'),
                                        Text('Female'),
                                        Text('Others'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Height',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 5,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('162'),
                                        Text('163'),
                                        Text('164'),
                                        Text('165'),
                                        Text('166'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Weight',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 8,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('49'),
                                        Text('50'),
                                        Text('51'),
                                        Text('52'),
                                        Text('53'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Fitness level',
                                  style: TextStyle(fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                DefaultTabController(
                                  length: 8,
                                  child: Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Colors.white, width: 2.5)

                                      //border: BoxBorder
                                    ),
                                    child: const TabBar(
                                      indicatorColor: Colors.red,
                                      unselectedLabelColor: Colors.white30,
                                      labelStyle: TextStyle(fontSize: 19),
                                      tabs: [
                                        Text('Beginner'),
                                        Text(
                                          'Indermediate',
                                          textScaleFactor: 0.8,
                                        ),
                                        Text('Advanced'),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Get.to(MyBottomNavBar(),
                                            transition: Transition.fadeIn,
                                            duration: Duration(seconds: 1));
                                      },
                                      child: Text('Continue')),
                                )
                              ],
                            ),
                          ]
                        //    Text('Page 1'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  final Paint _paint;

  _CirclePainter({required Color color, required double radius})
      : radius = radius,
        _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final center = offset +
        Offset(configuration.size!.width / 2,
            configuration.size!.height - radius - 2);
    canvas.drawCircle(center, radius, _paint);
  }
}
