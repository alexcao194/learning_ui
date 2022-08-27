import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromARGB(100, 215, 215, 215)),
      child: Center(
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            const Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: 'Tìm Kiếm...'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
