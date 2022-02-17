import 'package:flutter/material.dart';
import 'package:latihan_section4/widget/post.dart';
import 'package:latihan_section4/widget/story.dart';
import './widget/profile_pic.dart';
import './widget/info.dart';
import './widget/tab_item.dart';

void main() {
  runApp(Latihan());
}

class Latihan extends StatelessWidget {
  const Latihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ui(),
    );
  }
}

class ui extends StatelessWidget {
  const ui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profile_pic(),
                info("Post", "10"),
                info("Followers", "100"),
                info("Following", "50"),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Username",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox( height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzbcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz  ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "#hashtag",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "link here",
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
          SizedBox( height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ),
          SizedBox( height: 5, ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  story(title: "Story 1"),
                  story(title: "Story 2"),
                  story(title: "Story 3"),
                  story(title: "Story 4"),
                  story(title: "Story 5"),
                  story(title: "Story 6"),
                ],
              ),
            ),
          ),
          SizedBox(height: 15, ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tab_item(Icons.grid_on_outlined, true),
              tab_item(Icons.person_outlined, false),
            ],
          ),
        SizedBox( height: 5,),
        post(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: 4,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search,), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.movie,), label: "Movie"),
          BottomNavigationBarItem(icon: Icon(Icons.local_shipping,), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person,), label: "Profile"),
        ],
      ),
    );
  }
}

