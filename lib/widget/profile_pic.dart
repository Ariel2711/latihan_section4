import 'package:flutter/material.dart';

class profile_pic extends StatelessWidget {
  const profile_pic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
               Color.fromARGB(255, 208, 238, 252),
               Color.fromARGB(255, 67, 172, 221),
              ],
            ),
            borderRadius: BorderRadius.circular(100/2),
          ),
        ),
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1645036811556-d4ce14657484?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"), fit: BoxFit.cover),
            border: Border.all(color: Colors.white10, width: 3),
            borderRadius: BorderRadius.circular(100/2),
          ),
        ),
      ],
    );
  }
}
