import 'package:attendance_marking/select_class_div.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyUpload());
}

class MyUpload extends StatelessWidget {
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
  TextEditingController _filePathController = TextEditingController();
  String? _filePath;
  //
  // void openFilePicker() async {
  //   try {
  //     FilePickerResult? result = await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowedExtensions: ['xlsx'],
  //     );
  //
  //     if (result != null) {
  //       setState(() {
  //         _filePath = result.files.single.path; // Get the file path
  //         _filePathController.text =
  //             _extractFileName(_filePath!); // Set file name in TextField
  //       });
  //     } else {
  //       // User canceled the picker
  //       print('File picker canceled.');
  //     }
  //   } catch (e) {
  //     print('Error picking file: $e');
  //     // Handle error gracefully
  //   }
  // }

  String _extractFileName(String filePath) {
    List<String> pathComponents = filePath.split('/');
    return pathComponents.last;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double buttonWidth = screenWidth * 0.6;
    double buttonHeight = screenHeight * 0.07;
    double imageWidth = screenWidth * 0.8;
    double imageHeight = screenHeight * 0.3;

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
                builder: (context) => MySelect(),
              ),
            );
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
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
                      child: Image.asset('assets/exel.jpeg'),
                    ),
                    SizedBox(height: 40),
                    TextField(
                      controller: _filePathController,
                      readOnly: true,
                      // onTap: openFilePicker,
                      decoration: InputDecoration(
                        labelText: 'Selected File',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.folder_open),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: buttonWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button press if needed
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
                              'Get Data',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
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
