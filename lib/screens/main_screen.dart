import 'package:flutter/material.dart';

import '../widgets/main_card.dart';
import '../widgets/main_image.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List imgPath = ["assets/img1.png", "assets/img2.png"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainImage(
              imgPath: "assets/mainImg.png",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "New",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text("You've never seen it before!",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("View all",
                          style: TextStyle(color: Colors.white)))
                ],
              ),
            ),
            SizedBox(
              // width: double.infinity,
              height: 2 * size.height / 6,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MainCard(
                    imgPath: imgPath[index % 2],
                    onPress: () {},
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
