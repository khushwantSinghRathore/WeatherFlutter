import 'package:flutter/material.dart';

class Searchbarheader extends StatelessWidget {
  const Searchbarheader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: const TextField(
        style: TextStyle(
            color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(18),
          filled: true,
          fillColor: Color.fromARGB(255, 26, 28, 73),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          suffixIcon: Icon(Icons.search_rounded),
          suffixIconColor: Colors.grey,
          hintText: 'Search Your City',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
