import 'package:flutter/material.dart';

class TaggedClippedContainer extends StatelessWidget {
  final Image myImage;
  final String title;
  final String subTitle;
  final String tagText;

  const TaggedClippedContainer(
      {Key? key,
      required this.myImage,
      required this.title,
      required this.subTitle,
      required this.tagText})
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
        Positioned(
          left: 300,
          bottom: 200,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 40,
              width: 300,
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 80, offset: Offset(-5, 0))],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.white,
              ),
              child:  Text(
                tagText,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          ),
        )
      ],
    );

  }
}
