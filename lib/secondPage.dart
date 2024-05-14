import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stack_leaf/classBottom.dart';
import 'package:stack_leaf/firstPage.dart';
import 'package:stack_leaf/holidayList.dart';
import 'package:stack_leaf/partyList.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 239, 211, 125)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, bottom: 25, left: 50, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("images/user.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        "Jack",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 25),
                      ),
                      Text(
                        "Party organizer",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          style: ButtonStyle(
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 30)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 211, 51, 51)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FirstPage()));
                          },
                          child: Text(
                            "Read more",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 720,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: "October",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " Holidays",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 30,
                                      color: Colors.grey)),
                            ])),
                          ),
                          // PartyList().planning
                          HolidayList("images/Screenshot_2.png", "Thanksgiving",
                              "\$174.99", "View"),
                          HolidayList("images/Screenshot_1.png", "Halloween",
                              "\$350.00", "View"),
                          HolidayList("images/autumn.jpg", "Holiday",
                              "\$280.53", "View"),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: RichText(
                                text: TextSpan(children: const [
                              TextSpan(
                                  text: "Party",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.black)),
                              TextSpan(
                                  text: " planning",
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
                                        ? NaviBottom("Screenshot_1.png",
                                            "Wedding", "03:50 Time")
                                        : NaviBottom("Screenshot_2.png",
                                            "Birthday", "06:35 Time"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//
Widget icons() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
    child: Container(
      width: 80,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange.shade200),
      child: Icon(
        Icons.sunny,
        size: 40,
      ),
    ),
  );
}
