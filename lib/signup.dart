import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:page_indicator/page_indicator.dart';

import 'constants/utils.dart';
import 'homepage.dart';
import 'main.dart';

class MultiStepSignUp extends StatefulWidget {
  @override
  _MultiStepSignUpState createState() => _MultiStepSignUpState();
}

class _MultiStepSignUpState extends State<MultiStepSignUp> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  final DateFormat _dateFormat = DateFormat('MMMM d,yyyy');
  DateTime? _selectedDate;

  // Widget _buildSignUpForm() {
  //   // Build Step 1: Sign Up Form
  // }

  // Widget _buildGenderSelection() {
  //   // Build Step 2: Gender Selection
  // }

  // Widget _buildDateOfBirthSelection() {
  //   // Build Step 3: Date of Birth Selection
  // }

  // Widget _buildThankYouPage() {
  //   // Build Step 4: Thank You Page
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                _buildSignUpForm(),
                _buildGenderSelection(),
                _buildDateOfBirthSelection(),
                _buildThankYouPage(),
              ],
            ),
          ),
          Container(
            color: _currentPage == 3 ? Colors.indigo : Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: _currentPage == 3
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MainNavigation()),
                              );
                            }
                          : () => _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: _currentPage == 3
                                ? Colors.black.withOpacity(0.5)
                                : Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.center,
                        child: Text(
                            _currentPage == 3 ? 'Explore the App' : 'Continue',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpForm() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('STEP 1/3',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.indigo,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sign Up',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.indigo,
                  )),
              Column(
                children: [
                  const Divider(
                    thickness: 1,
                    color: Colors.indigo,
                  ),
                ],
              )
            ],
          ),
          Text(
              'Hope you don\'t mind us getting some information to keep you safe on our app',
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 1.5,
                color: Colors.grey,
              )),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.grey,
                    )),
              ),
              TextFormField(
                controller: _firstNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.grey,
                    )),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.grey,
                    )),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                  'By continuing , you\'re agreeing to our Terms & Conditions and Privacy Policy',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    color: Colors.grey,
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildGenderSelection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('STEP 2/3',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.indigo,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Which one are you?',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.indigo,
                  )),
              Column(
                children: [
                  const Divider(
                    thickness: 1,
                    color: Colors.indigo,
                  ),
                ],
              )
            ],
          ),
          Text(
              'To better customize your experience, we need to know your gender',
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 1.5,
                color: Colors.grey,
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 109, 214, 209)
                              .withOpacity(0.6),
                        ),
                        child: const Icon(
                          Icons.male,
                          size: 30,
                        ),
                      )),
                  Positioned(
                      bottom: 15,
                      left: 20,
                      child: Text('Male',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.indigo,
                          )))
                ],
              ),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigo.withOpacity(0.6),
                        ),
                        child: const Icon(
                          Icons.female,
                          size: 30,
                        ),
                      )),
                  Positioned(
                      bottom: 15,
                      left: 20,
                      child: Text('Female',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.indigo,
                          )))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDateOfBirthSelection() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('STEP 3/3',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.indigo,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('When were you born?',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: Colors.indigo,
                  )),
              Column(
                children: [
                  const Divider(
                    thickness: 1,
                    color: Colors.indigo,
                  ),
                ],
              )
            ],
          ),
          Text(
              'Please tell us your date of birth below. Your information is safe we assure you',
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 1.5,
                color: Colors.grey,
              )),
          const SizedBox(height: 20),
          InkWell(
            onTap: () async {
              DateTime? newDate = await showRoundedDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(DateTime.now().year - 120),
                lastDate: DateTime.now(),
                borderRadius: 16,
              );

              if (newDate != null) {
                setState(() {
                  _selectedDate = newDate;
                });
              }
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.indigo),
              child: Text(
                _selectedDate == null
                    ? 'Select Date of Birth'
                    : 'Date of Birth: ${_dateFormat.format(_selectedDate!)}',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThankYouPage() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.indigo),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              width: 200,
              padding: const EdgeInsets.all(5),
              child: const Image(image: AssetImage('assets/no-bg.png'))),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Thank you for signing up to our app.',
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Welcome to the Healthi Network',
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 50,
              fontWeight: FontWeight.bold,
              height: 1.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
