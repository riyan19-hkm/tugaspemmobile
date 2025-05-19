import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Column(
        spacing: 15.0,
        children: [
          // search bar
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.tune),
              hintText: "Search"
            ),
          ),
          // category
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Headline"),
              Text("Top Stories"),
              Text("Similar News"),
            ],
          ),
          // carousel
          Container(
            constraints: BoxConstraints(
              maxHeight: 200.0,
            ),
            child: CarouselView(
              itemExtent: double.infinity,
              shrinkExtent: 100, 
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 29, 13, 255),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
          //All News
        ],
      ),
    );
  }
}