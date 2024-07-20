import 'package:attendance_marking/login.dart';
import 'package:attendance_marking/select_class_div.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyDepartment());
}

class MyDepartment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Departments',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  static const Color customBlue = Color(0xFF015078);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Departments",
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
              MaterialPageRoute(builder: (context) => MyLogin()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 8 / 8, // Adjust the size of each box
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            List<String> images = [
              'assets/cs.jpeg',
              'assets/it.jpeg',
              'assets/en.jpeg',
              'assets/mec.jpeg',
              'assets/ci.jpeg'
            ];
            return DepartmentTile(
              imagePath: images[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MySelect()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class DepartmentTile extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  DepartmentTile({
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MyLogin.customBlue, width: 3.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(imagePath),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
