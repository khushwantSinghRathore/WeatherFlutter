import 'package:flutter/material.dart';
import 'package:weatherapp/services/httpcalls.dart';

class Searchbarheader extends StatefulWidget {
  const Searchbarheader({Key? key}) : super(key: key);

  @override
  State<Searchbarheader> createState() => _SearchbarheaderState();
}

class _SearchbarheaderState extends State<Searchbarheader> {
  final TextEditingController _searchbar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: TextField(
        controller: _searchbar,
        style: const TextStyle(
            color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          filled: true,
          fillColor: const Color.fromARGB(255, 26, 28, 73),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          suffixIcon: IconButton(
              onPressed: _search(),
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.grey,
              )),
          suffixIconColor: Colors.grey,
          hintText: 'Search Your City',
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  _search() {
    HttpCalls().getcitydata(_searchbar.text);
    print(HttpCalls.res);
  }
}
