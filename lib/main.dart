import 'package:attendance_marking/Auth/auth_service.dart';
import 'package:attendance_marking/department.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...


import 'package:flutter/material.dart';

import 'login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthService().handleAuthState(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const Color customBlue = Color(0xFF015078);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double screenWidth = MediaQuery.of(context).size.width;
                double screenHeight = MediaQuery.of(context).size.height;
                double imageWidth = screenWidth * 0.8;
                double imageHeight = screenHeight * 0.3;
                double containerWidth = screenWidth * 0.8;
                double containerHeight = screenHeight * 0.07;
                double buttonWidth = screenWidth * 0.6;
                double buttonHeight = screenHeight * 0.07;

                return Column(
                  children: <Widget>[
                    SizedBox(
                      width: imageWidth, // Set the responsive width
                      height: imageHeight, // Set the responsive height
                      child: Image.asset('assets/logo1.jpeg'),
                    ),
                    Text(
                      'MarkEasy',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: customBlue),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: containerWidth, // Set the responsive width
                      height: containerHeight, // Set the responsive height
                      alignment: Alignment
                          .center, // Center the text inside the container
                      child: Text(
                        'Upload Students data and mark attendance easily',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center, // Center align the text
                      ),
                    ),
                    SizedBox(height: 40), // Add some space before the button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyLogin()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: customBlue,
                        foregroundColor: Colors.white,
                        // Set the text color to white
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(30.0), // Rounded corners
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shadowColor: customBlue, // Set the shadow color
                        elevation: 10, // Button padding
                        minimumSize: Size(buttonWidth,
                            buttonHeight), // Responsive button size
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
