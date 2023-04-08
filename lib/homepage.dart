import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wholeness/appointments.dart';
import 'package:wholeness/book.dart';
import 'package:wholeness/chatpage.dart';
import 'package:wholeness/constants/routines.dart';
import 'package:wholeness/myappbar.dart';

import 'appointment.dart';
import 'constants/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(title: 'Dashboard'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Kaweng 👋 ',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    Text(
                      'Good Evening',
                      style: SafeGoogleFont('Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const Icon(Icons.notifications)
              ],
            ),
            const SizedBox(height: 15),
            Container(
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
                    'Search for a doctor, or health challenge ',
                    style: SafeGoogleFont('Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                        color: Colors.black.withOpacity(0.6)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.indigo.withOpacity(0.2)),
                    child: Text(
                      'Get Help',
                      style: SafeGoogleFont('Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: Colors.indigo),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookAppointment()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.pink.withOpacity(0.2)),
                      child: Text(
                        'Book Appointment',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Your Appointments',
                            style: SafeGoogleFont('Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Colors.indigo),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          'See All',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                              color: Colors.pink),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatPage()),
                          );
                        },
                        child: const Appointments()),
                    const SizedBox(height: 15),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatPage()),
                          );
                        },
                        child: const Appointment()),
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Your Routines',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.indigo),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Routines()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
