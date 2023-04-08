import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wholeness/constants/utils.dart';

class Post3 extends StatefulWidget {
  const Post3({super.key});

  @override
  State<Post3> createState() => _Post3State();
}

class _Post3State extends State<Post3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: Image.asset('assets/pill.jpg'),
        ),
        Container(
          child: Row(children: [
            Row(
              children: const [
                Icon(Icons.favorite_outline),
                Text("1.9K Likes")
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: const [Icon(Icons.comment), Text("1.7K Comments")],
            ),
          ]),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("@ doc_eze",
                  style: SafeGoogleFont('Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      color: Colors.black.withOpacity(0.9))),
              Text(
                  "When Last did you see the doctor? It's important to get checked every now and then. You can easily get checked on the Healthi app, no need to go to a physical hospital",
                  style: SafeGoogleFont('Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.black.withOpacity(0.9)))
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.8)),
            child: Text("View 1.7K Comments",
                style: SafeGoogleFont('Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    color: Colors.white.withOpacity(0.9))),
          ),
        )
      ],
    );
    ;
  }
}
