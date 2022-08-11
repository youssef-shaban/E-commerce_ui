import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    Key? key,
    required this.imgPath,
  }) : super(key: key);

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
            )),
        Container(
          width: double.infinity,
          height: 589,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                const Color(0xff000000).withOpacity(0.73),
                const Color(0xff000000).withOpacity(0.0)
              ])),
        ),
        Container(
          width: double.infinity,
          height: 587,
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 360,
              ),
              const SizedBox(
                width: 250,
                child: Text(
                  "Fashion sale",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 55,
                      color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      fixedSize: const Size(180, 40),
                      primary: const Color(0xffea384d)),
                  child: const Text(
                    "Check",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
