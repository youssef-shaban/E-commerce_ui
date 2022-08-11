import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.imgPath,
  }) : super(key: key);

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      splashColor: const Color(0xffea384d),
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: size.width / 2.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Badge(
            padding: const EdgeInsets.all(6),
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.black,
            borderRadius: BorderRadius.circular(50),
            badgeContent: const Text('NEW',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300)),
          ),
        ),
      ]),
    );
  }
}
