import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 26, 28, 73),
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Today',
                overflow: TextOverflow.ellipsis,
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
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Wrap(
                  direction: Axis.horizontal,
                  children: const [
                    Text(
                      '+30.0',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      '°C',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: const Image(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.fill,
                  image: AssetImage('images/few-clouds.png'),
                ),
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
