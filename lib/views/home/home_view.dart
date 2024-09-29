import 'package:flutter/material.dart';
import 'package:onsip/style/colors.dart';
import 'package:onsip/style/shapes.dart';

class HomeView extends StatelessWidget {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Use primary color for background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container for the text
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    // Make sure to include a list of TextSpans
                    TextSpan(
                      text: "Welcome to ",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text_mainColor,
                      ),
                    ),
                    TextSpan(
                      text: "\nOnSip",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.accentColor,
                      ),
                    ),
                    TextSpan(
                      text: "\n\nOrder your drinks with ease",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: AppColors.text_mainColor,
                      ),
                    ),
                    TextSpan(
                      text: "\n\n\nEnter the venue's code",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: AppColors.text_mainColor,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center, // Center the text
              ),
            ),

            // 4-Digit Code Input Field
            Container(
              width: 200,
              height: 40, // Increased height for better appearance
              margin: const EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: _codeController,
                keyboardType: TextInputType.number,
                maxLength: 4,
                style: TextStyle(
                  color: AppColors.accentColor, // Text color for entered code
                  fontSize: 30, // Font size for entered code
                ),
                decoration: InputDecoration(
                  hintText: '- - - -', // Placeholder text
                  hintStyle: TextStyle(
                    color: AppColors.accentColor, // Placeholder text color
                    fontSize: 65, // Placeholder text size
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.accentColor, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  counterText: '', // Hide the counter text
                  contentPadding: EdgeInsets.symmetric(vertical: 71.0), // Adjust the vertical padding
                ),
                textAlign: TextAlign.center, // Center the entered text horizontally
              ),
            ),

            // Submit Button
            SizedBox(
              width: 150, // Set the desired width of the button
              height: 40, // Set the desired height of the button
              child: ElevatedButton(
                onPressed: () {
                  String code = _codeController.text;
                  if (code.length == 4) {
                    // Process the 4-digit code
                    print('Code entered: $code');
                  } else {
                    // Clear the input if the code is not 4 digits
                    _codeController.clear();
                    print('Please enter a 4-digit code.');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accentColor, // Button background color
                  foregroundColor: AppColors.primaryColor, // Text color on button
                  shape: AppShapes.smallbuttonshape, // Custom button shape
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20, // Font size of the button text
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
