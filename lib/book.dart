import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:wholeness/constants/utils.dart';
import 'package:wholeness/myappbar.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(title: 'Doctors Details'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          image: AssetImage('assets/d2.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Bowen Keys',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.indigo),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'PostNatal Care Specialist',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.indigo.withOpacity(0.6)),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Rating: 4.5/5 (200 reviews)',
                        style: SafeGoogleFont('Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.red.withOpacity(0.6)),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.indigo.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        const Icon(Icons.sick),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              'Patients',
                              style: SafeGoogleFont('Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '2300 +',
                              style: SafeGoogleFont('Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                  color: Colors.black.withOpacity(0.6)),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        const Icon(Icons.local_hospital),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              'XP',
                              style: SafeGoogleFont('Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '10+ years',
                              style: SafeGoogleFont('Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                  color: Colors.black.withOpacity(0.6)),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      children: [
                        const Icon(Icons.emoji_emotions),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              'Reviews',
                              style: SafeGoogleFont('Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '100%',
                              style: SafeGoogleFont('Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                  color: Colors.black.withOpacity(0.6)),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'About Doctor',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.indigo),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Dr. Bowen Keys is a highly skilled and experienced physician who specializes in postnatal care. With a passion for helping new mothers and babies navigate the critical period following childbirth, Dr. Keys has dedicated his career to providing compassionate and comprehensive care to families in need.As a postnatal care specialist, Dr. Keys is well-versed in the unique challenges and concerns that can arise in the weeks and months after a baby is born. He works closely with new mothers to address any physical or emotional issues they may be experiencing, offering guidance and support as they adjust to their new roles.",
                          style: SafeGoogleFont('Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                              color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Specialization',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.indigo),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Row(
                                children: [
                                  const Icon(Icons.child_care),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Pediatrics',
                                        style: SafeGoogleFont('Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            height: 1.5,
                                            color: Colors.black),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Row(
                                children: [
                                  const Icon(Icons.pregnant_woman),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Child Birth',
                                        style: SafeGoogleFont('Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            height: 1.5,
                                            color: Colors.black),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Top Reviews',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.indigo),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/beautiful-lady-20.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.indigo.withOpacity(0.1)),
                              width: 50,
                              child: Text(
                                "Dr. Bowen Keys is an exceptional postnatal care specialist who has made a tremendous impact on my moms life and my family members. From the moment we met her, she exuded a warm and caring demeanor that immediately put us at ease.",
                                style: SafeGoogleFont('Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                    color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Available Dates',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.indigo),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Today',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("1:30 PM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("3:30 PM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("5:30 PM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("8:00 PM"),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Tomorrow',
                          style: SafeGoogleFont('Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("08:30 AM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("10:00 AM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("11:30 AM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("12:00 PM"),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("1:30 PM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("3:30 PM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("5:30 PM"),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border:
                                    Border.all(width: 1, color: Colors.indigo)),
                            child: const Text("8:00 PM"),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "Book Appointment",
                                style: SafeGoogleFont('Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
