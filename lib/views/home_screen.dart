import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newshive/views/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int indexScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network("asset/images/logo.png"),
        title: Text("News Hive"),
      ),
      body: IndexedStack(
        index: indexScreen,
        children: [
          //home
          HomePage(),
          //bookmark
          Center(
            child: Text("Bookmark"),
          ),
          //profike
          Center(
            child: Text("Profile"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexScreen,
        onTap: (index){
          setState(() {
            indexScreen = index;  
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: "Bookmark"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}