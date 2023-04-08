import 'package:flutter/material.dart';
import 'package:wholeness/myappbar.dart';
import 'package:wholeness/post2.dart';
import 'package:wholeness/posts.dart';

import 'constants/utils.dart';
import 'post3.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(title: 'The Healthi Forum'),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search ...',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                              color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 35,
                  width: 120,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.indigo.withOpacity(0.9)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Stay Anonymous',
                            style: SafeGoogleFont('Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Colors.white.withOpacity(0.9))),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border:
                                  Border.all(width: 1.5, color: Colors.white)),
                        )
                      ]),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: const [
                Post1(),
                SizedBox(
                  height: 15,
                ),
                Post2(),
                SizedBox(
                  height: 15,
                ),
                Post3()
              ]),
            ),
          )
        ],
      ),
    );
  }
}
