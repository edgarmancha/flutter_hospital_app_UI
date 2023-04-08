import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'constants/utils.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.indigo.withOpacity(0.9)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/download.jpeg'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
                height: 45,
                width: 45,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Eze Mike',
                    style: SafeGoogleFont('Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'HealthCare Specialist',
                    style: SafeGoogleFont('Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                        color: Colors.white.withOpacity(0.6)),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text(
                          'Tuesday, March 28',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.timelapse,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text(
                          '01:30 PM',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        )
                      ],
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
