import 'package:flutter/material.dart';

class NaviBottom extends StatelessWidget {
  String image;
  String text = "";
  String time = "";

  NaviBottom(this.image, this.text, this.time);

  @override
  Widget build(BuildContext context) {
    //   // TODO: imp

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
                height: 200,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "images/$image",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      text,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(time, style: TextStyle(fontWeight: FontWeight.w300))
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
