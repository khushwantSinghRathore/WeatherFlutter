import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 20, right: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            color: Color.fromARGB(255, 26, 28, 73),
          ),
          child: Expanded(
            flex: 1,
            child: Row(
              children: [
                const Image(
                  image: AssetImage('images/humidity.png'),
                  width: 30,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '92%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Humidity',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w100),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            color: Color.fromARGB(255, 26, 28, 73),
          ),
          child: Expanded(
            flex: 1,
            child: Row(
              children: [
                const Image(
                  image: AssetImage('images/pressure.png'),
                  width: 30,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: const [
                    Text(
                      '1010HPa',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Presure',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w100),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
