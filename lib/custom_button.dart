import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/data_entry.dart';
import 'package:lab/decision_maker.dart';

// ignore: must_be_immutable
class CustomButton extends StatefulWidget {
  final String buttonText;
  TextEditingController btnController;

  CustomButton({
    super.key,
    required this.buttonText,
    required this.btnController,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
 

  Future<void> enterText() async {
    setState(() {
      widget.btnController.text =
          dataEntry(widget.btnController.text, widget.buttonText);
    });
  }

  Future<void> onButtonPressed() async {
    await enterText();
      }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> buttonData = DecisionMaker(widget.buttonText);
    return Center(
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.21,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: buttonData['BackgroundColor'],
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 3),
              blurRadius: 6,
            ),
          ],
         
        ),
        child: TextButton(
          onPressed: () {
            onButtonPressed();
          },
          child: Center(
            child: Text(
              widget.buttonText,
              style: GoogleFonts.acme(
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: buttonData['TextColor'],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
