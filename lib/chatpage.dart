import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'constants/utils.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/d2.jpeg'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                      height: 45,
                      width: 45,
                    ),
                    Column(
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
                        )
                      ],
                    ),
                    const Icon(Icons.info)
                  ],
                ),
                Divider(
                  color: Colors.indigo.withOpacity(0.3),
                )
              ]),
            ),
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                          BoxDecoration(color: Colors.indigo.withOpacity(0.3)),
                      child: Text(
                        'Saturday, April 1',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 200),
                    Container(
                      alignment: Alignment.centerLeft,
                      constraints: const BoxConstraints(minWidth: 150),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.3)),
                        child: Text(
                          'Hi, Kaweng, How are you feeling today?',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      constraints: const BoxConstraints(minWidth: 150),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(color: Colors.indigo),
                        child: Text(
                          'Actually doc, I feel so much better today',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 250),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.3)),
                        child: Text(
                          'Hope there hasn\'t been any complications from the medications I prescribed the other day',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 250),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(color: Colors.indigo),
                        child: Text(
                          'No, not really, although I seem to be eating a little more than I used to before the medications ',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  const Icon(Icons.emoji_emotions),
                  Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                color: Colors.indigo.withOpacity(0.7),
                                width: 1),
                          ),
                          child: TextFormField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              hintText: 'Type your message...',
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                height: 1.5,
                                color: Colors.white,
                              ),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                              suffixIcon: Container(
                                margin: const EdgeInsets.all(0.5),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.indigo.withOpacity(0.4),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.send_outlined),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
