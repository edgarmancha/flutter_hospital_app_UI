import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wholeness/constants/utils.dart';

class Routines extends StatefulWidget {
  const Routines({super.key});

  @override
  State<Routines> createState() => _RoutinesState();
}

class _RoutinesState extends State<Routines> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.indigo),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '07:00 AM',
                  style: SafeGoogleFont('Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.indigo),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo.withOpacity(0.9)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wake Up',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'It\'s 7AM, It\'s time to wake up and start your day. It\'s part of your healthy routine',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.indigo),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '08:00 AM',
                  style: SafeGoogleFont('Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.indigo),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo.withOpacity(0.9)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Breakfast Time',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'This is a very important meal Kaweng, please don\'t miss it',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.indigo),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '09:00 AM',
                  style: SafeGoogleFont('Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.indigo),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo.withOpacity(0.9)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Medications',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'It\'s time for your first dosage for the day. Take two tablets of the antibitics prescribed by Dr. Eze',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.indigo),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '10:00 AM',
                  style: SafeGoogleFont('Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.indigo),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo.withOpacity(0.9)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Work',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Remember, you still gotta pay the bills. You are strong, so have a nice day at work',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.indigo),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '12:00 PM',
                  style: SafeGoogleFont('Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.indigo),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo.withOpacity(0.9)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Medication',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'It\'s time for your second dosage for the day. Take two tablets for the same drugs you were prescribed by Dr. Eze',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.indigo),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '12:00 PM',
                  style: SafeGoogleFont('Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.indigo),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo.withOpacity(0.9)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Work',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Enjoy the rest of the day at work',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.indigo),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '07:00 PM',
                  style: SafeGoogleFont('Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.indigo),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(minWidth: 200, maxWidth: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.indigo.withOpacity(0.9)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Medication',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Final two tablets for the day Kaweng, you made it through. Goodnight!',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
