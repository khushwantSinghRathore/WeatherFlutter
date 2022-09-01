import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 26, 28, 73),
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Today',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Friday, 01 April',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    '+30.0',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '\u2103',
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const Image(
                fit: BoxFit.fitWidth,
                width: 100,
                image: AssetImage('images/few-clouds.png'),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Colombo, Sri Lanka',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
