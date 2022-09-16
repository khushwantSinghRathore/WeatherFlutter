import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 15, right: 20),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            // const SizedBox(
            //   width: 10,
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Color.fromARGB(255, 26, 28, 73),
              ),
              child: Wrap(
                children: [
                  const Image(
                    image: AssetImage('images/humidity.png'),
                    width: 25,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '92%',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Humidity',
                        overflow: TextOverflow.ellipsis,
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
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                color: Color.fromARGB(255, 26, 28, 73),
              ),
              child: Wrap(
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
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Presure',
                        overflow: TextOverflow.ellipsis,
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
            // const SizedBox(
            //   width: 10,
            // ),
          ]),
    );
  }
}
