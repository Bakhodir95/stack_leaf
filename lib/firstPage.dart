import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stack_leaf/classBottom.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/tree.webp"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Container(
                padding: EdgeInsets.all(40),
                // width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Autumn day",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          "Hello Jack!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 17),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/user.png"),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.5, 1),
              child: Container(
                  height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [for (var i = 0; i < 4; i++) icons()],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: RichText(
                            text: TextSpan(children: [
                          const TextSpan(
                              text: "Day",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black)),
                          TextSpan(
                              text: " Schedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 30,
                                  color: Colors.grey)),
                        ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (var i = 0; i < 5; i++)
                                i % 2 == 0
                                    ? NaviBottom("Screenshot_1.png", "Wedding",
                                        "03:50 Time")
                                    : NaviBottom("Screenshot_2.png", "Birthday",
                                        "06:35 Time"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Widget icons() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
    child: Container(
      width: 80,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange.shade200),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sunny,
            size: 40,
          )),
    ),
  );
}
