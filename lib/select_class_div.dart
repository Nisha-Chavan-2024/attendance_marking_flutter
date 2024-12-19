
import 'package:attendance_marking/upload.dart';
import 'package:flutter/material.dart';

import 'department.dart';

class MySelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance Marking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SelectPage(),
    );
  }
}

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  static const Color customBlue = Color(0xFF015078);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
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
              MaterialPageRoute(
                builder: (context) => MyDepartment(),
              ),
            );
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = MediaQuery.of(context).size.width;
          double screenHeight = MediaQuery.of(context).size.height;
          double buttonWidth = screenWidth * 0.6;
          double buttonHeight = screenHeight * 0.07;
          double imageWidth = screenWidth * 0.8;
          double imageHeight = screenHeight * 0.3;

          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    Container(
                      width: imageWidth,
                      height: imageHeight,
                      child: Image.asset('assets/stud.jpeg'),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: constraints.maxWidth * 0.8,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: customBlue,
                              width: 3.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 20.0,
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              'Select Class',
                              style: TextStyle(color: customBlue),
                            ),
                            value: null,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'FY',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'FY',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'SY',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'SY',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'TY',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'TY',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'BE',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'BE',
                          ),
                        ],
                        onChanged: (value) {
                          print('Selected class: $value');
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: constraints.maxWidth * 0.8,
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: customBlue,
                              width: 3.0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 20.0,
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              'Select Division',
                              style: TextStyle(color: customBlue),
                            ),
                            value: null,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'A',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'A',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'B',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'B',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'C',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'C',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'D',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'D',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'E',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'E',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              'F',
                              style: TextStyle(color: customBlue),
                            ),
                            value: 'F',
                          ),
                        ],
                        onChanged: (value) {
                          print('Selected division: $value');
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: buttonWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyUpload(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: customBlue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          shadowColor: customBlue,
                          elevation: 10,
                          minimumSize: Size(buttonWidth, buttonHeight),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
