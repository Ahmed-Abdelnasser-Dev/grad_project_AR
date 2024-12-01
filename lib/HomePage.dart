import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/Activity.dart';
import 'package:grad_project/Apps.dart';
import 'package:grad_project/Settings.dart';
import 'package:grad_project/Summaries.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Container(
            width:double.infinity ,
            height: 95,
            decoration: BoxDecoration(
              color: Color.fromRGBO(11, 12, 16, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25) , topRight:Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Apps()),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.apps_rounded,
                        color: Colors.white,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Apps',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Summaries()),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.library_books_rounded,
                        color: Colors.white,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Summaries',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Activity()),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.local_activity,
                        color: Colors.white,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Activity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}