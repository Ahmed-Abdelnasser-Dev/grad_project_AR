import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grad_project/Activity.dart';
import 'package:grad_project/Apps.dart';
import 'package:grad_project/Object%20Detection.dart';
import 'package:grad_project/Record.dart';
import 'package:grad_project/Settings.dart';
import 'package:grad_project/Summaries.dart';
import 'package:grad_project/Translate.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> blocks = [
      {'image': 'assets/imgs/Camera Icon.svg', 'text': 'Object\nDetection', 'page': const ObjectDetection()},
      {'image': 'assets/imgs/Translate Icon.svg', 'text': 'Capture and\nTranslate', 'page': const Translate()},
      {'image': 'assets/imgs/Record Icon.svg', 'text': 'Record and\nSummarize ', 'page': const Record()},
      {'image': 'assets/imgs/Object Detection Icon.svg', 'text': 'Object\nDetection', 'page': const ObjectDetection()},
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 12, 16, 1),
      bottomNavigationBar: Stack(
        children: [
          Container(
            width:double.infinity ,
            height: 95,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(11, 12, 16, 1),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25) , topRight:Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 3,
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
                        color: Colors.grey,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Apps',
                        style: TextStyle(
                          color: Colors.grey,
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
                        color: Colors.grey,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Summaries',
                        style: TextStyle(
                          color: Colors.grey,
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
                        Icons.notifications_active_rounded,
                        color: Colors.grey,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Activity',
                        style: TextStyle(
                          color: Colors.grey,
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
                        color: Colors.grey,
                        size: 35, // Icon size
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.grey,
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
      body: Container(
        child: Container(
          margin: const EdgeInsets.only(top:50 , left: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Device Name" , style: TextStyle(fontSize: 16, color: Color.fromRGBO(125, 132, 145, 1), fontWeight: FontWeight.w500,
          ),),
              const Text("AR Glasses" , style: TextStyle(fontSize: 28, color: Color.fromRGBO(229, 229, 229, 1), fontWeight: FontWeight.w600,
              ),),

              Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
              width: 160,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(16, 17, 40, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only( top: 20, bottom: 10),
                    child: Image.asset(
                      "assets/imgs/wifi.png",
                      width: 90,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25 , top: 5),
                    child: Text(
                      "70%", // First text
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, top: 5),
                    child: Text(
                      "Signal Strength", // Second text
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            ),

                Container(
                  width: 160,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(16, 17, 40, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( top: 20, bottom: 10),
                        child: Image.asset(
                          "assets/imgs/no-internet.png",
                          width: 90,
                          height: 40,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25 , top: 5),
                        child: Text(
                          "Local Mode", // First text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          "No Internet", // Second text
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 90,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(16, 17, 40, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Image.asset(
                          "assets/imgs/battery.png",
                          width: 90,
                          height: 40,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0 , top: 0),
                        child: Text(
                          "Battery", // First text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),

              Container(
            width: 160,
            height: 70,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(16, 17, 40, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15), // Adjust left padding for text
                  child: Text(
                    "Disconnect", // Text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/imgs/bluetooth.png",
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),

              SizedBox(
                height: 20,
              ),

              const Text("Actions" , style: TextStyle(fontSize: 22, color: Color.fromRGBO(125, 132, 145, 1), fontWeight: FontWeight.w500,
              ),),

              SizedBox(
                height: 20,
              ),

              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(  right: 10 ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: blocks.length,
                  itemBuilder: (context, index) {
                    final block = blocks[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => block['page']),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:Color.fromRGBO(16, 17, 40, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              block['image'],
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              block['text'],
                              style: const TextStyle(
                                color: Color.fromRGBO(165, 165, 165, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )




            ],
          ),

        ),

      ),
    );
  }
}