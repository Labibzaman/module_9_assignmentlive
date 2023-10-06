import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedSize = ''; // Variable to track the selected size ("s", "m", "L", "XL", "XXL", "XXXL")

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  Color getButtonColor(String size) {
    return size == selectedSize ? Colors.red : Colors.grey;
  }

  void showSelectedSizeSnackBar(BuildContext context, String size) {
    final snackBar = SnackBar(
      content: Text('Selected Size: $size'),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Size Selector')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Add spacing between buttons
              children: [
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      selectSize('s');
                      showSelectedSizeSnackBar(context, 's');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(getButtonColor('s')),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    ),
                    child: Text('s'),
                  ),
                ),
                SizedBox(width: 15),
                 // Reduce spacing between buttons
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      selectSize('m');
                      showSelectedSizeSnackBar(context, 'm');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(getButtonColor('m')),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    ),
                    child: Text('m'),
                  ),
                ),
                SizedBox(width: 15),
                 // Reduce spacing between buttons
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      selectSize('L');
                      showSelectedSizeSnackBar(context, 'L');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(getButtonColor('L')),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    ),
                    child: Text('L'),
                  ),
                ),
                SizedBox(width: 15),
                // Reduce spacing between buttons
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      selectSize('XL');
                      showSelectedSizeSnackBar(context, 'XL');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(getButtonColor('XL')),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    ),
                    child: Text('XL'),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Add spacing between buttons
              children: [
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      selectSize('XXL');
                      showSelectedSizeSnackBar(context, 'XXL');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(getButtonColor('XXL')),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    ),
                    child: Text('XXL'),
                  ),
                ),
                SizedBox(width: 5), // Reduce spacing between buttons
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      selectSize('XXXL');
                      showSelectedSizeSnackBar(context, 'XXXL');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(getButtonColor('XXXL')),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
                    ),
                    child: Text('XXXL'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
