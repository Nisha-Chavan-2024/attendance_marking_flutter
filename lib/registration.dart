import 'package:flutter/material.dart';

import 'login.dart';

class MyRegistration extends StatelessWidget {
  static const Color customBlue = Color(0xFF015078);

  const MyRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
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
                MaterialPageRoute(builder: (context) => MyLogin()),
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
                  double fieldFontSize = maxWidth * 0.05;
                  double buttonWidth = screenWidth * 0.6;
                  double buttonHeight = screenHeight * 0.07;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Registration',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: customBlue,
                        ),
                      ),
                      SizedBox(height: 40),
                      TextField(
                        cursorColor: customBlue,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: customBlue,
                          ),
                          hintText: 'Name',
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
                        obscureText:
                            true, // Use obscureText for password fields
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
                      SizedBox(height: 20),
                      TextField(
                        cursorColor: customBlue,
                        obscureText:
                            true, // Use obscureText for password fields
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: customBlue,
                          ),
                          hintText: 'Confirm Password',
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
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => MyLogin()),
                          // );
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
                          'Register',
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
      ),
    );
  }
}
