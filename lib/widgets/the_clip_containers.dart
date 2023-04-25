import 'package:flutter/material.dart';

class TheClipContainer extends StatelessWidget {
  final Image myImage;
  final String title;
  final String subTitle;

  const TheClipContainer(
      {Key? key,
      required this.myImage,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: myImage,
        ),
        Positioned(
          bottom: 15,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    shadows: [
                      Shadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 5,
                        color: Colors.black,
                      )
                    ]),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        color: Colors.black,
                      )
                    ]),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
