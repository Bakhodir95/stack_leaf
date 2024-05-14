import 'dart:ffi';

import 'package:flutter/material.dart';

class HolidayList extends StatelessWidget {
  String image1;
  String holiday;
  String price;
  String button;

  HolidayList(
    this.image1,
    this.holiday,
    this.price,
    this.button,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(image1), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        holiday,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              TextButton(
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 30)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 157, 232, 157)),
                  ),
                  onPressed: () {},
                  child: Text(
                    button,
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            indent: 6,
            color: Colors.grey,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
