import 'package:attendance_marking/registration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'department.dart';
import 'main.dart';


class MyLogin extends StatelessWidget {
  static const Color customBlue = Color(0xFF015078);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: customBlue,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double screenWidth = MediaQuery.of(context).size.width;
                  double screenHeight = MediaQuery.of(context).size.height;
                  double maxWidth = constraints.maxWidth;
                  double imageWidth = screenWidth * 0.3;
                  double imageHeight = screenHeight * 0.3;
                  double fontSizeLarge = maxWidth * 0.08;
                  double fontSizeMedium = maxWidth * 0.05;
                  double buttonWidth = screenWidth * 0.6;
                  double buttonHeight = screenHeight * 0.07;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: imageWidth, // Set the responsive width
                        height: imageHeight, // Set the responsive height
                        child: Image.asset('assets/logo2.png'),
                      ),
                      Text(
                        'MarkEasy',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: customBlue,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Teacher Login',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: customBlue,
                        ),
                      ),
                      SizedBox(height: 40),
                      TextField(
                        cursorColor: customBlue,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: customBlue,
                          ),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: customBlue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: customBlue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: customBlue),
                          ),
                        ),
                        style: TextStyle(color: customBlue),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        cursorColor: customBlue,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: customBlue,
                          ),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: customBlue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: customBlue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: customBlue),
                          ),
                        ),
                        style: TextStyle(color: customBlue),
                      ),
                      SizedBox(height: 40), // Add some space before the button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyDepartment()),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shadowColor: customBlue, // Set the shadow color
                          elevation: 10, // Button padding
                          minimumSize: Size(buttonWidth,
                              buttonHeight), // Responsive button size
                        ),
                        child: Text(
                          'LogIn',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Do you have account? ',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Register here',
                              style: TextStyle(color: customBlue, fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyRegistration()),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
