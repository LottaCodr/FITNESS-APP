import 'package:flutter/material.dart';

import 'OnBoardingModel.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: model.height * 0.5,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                model.subTitle,
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 90,
          )
        ],
      ),
    );
  }
}
