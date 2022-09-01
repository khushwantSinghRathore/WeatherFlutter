import 'package:flutter/material.dart';

class NextDays extends StatelessWidget {
  const NextDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 15, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 26, 28, 73),
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Column(
              children: const [
                Text(
                  '+30.0\u2103',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  'Friday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 26, 28, 73),
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Column(
              children: const [
                Text(
                  '+30.0\u2103',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  'Friday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 26, 28, 73),
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: Column(
              children: const [
                Text(
                  '+30.0\u2103',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
                Text(
                  'Friday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
