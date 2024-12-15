import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/custom_row.dart';

class CustomButtonTray extends StatefulWidget {
  const CustomButtonTray({super.key});

  @override
  State<CustomButtonTray> createState() => _CustomButtonTrayState();
}

class _CustomButtonTrayState extends State<CustomButtonTray> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.2,
         
          child: Center(
            child: TextField(
              controller: _controller,
              readOnly: true,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                hintText: "0",
                hintStyle: GoogleFonts.poppins(
                  textStyle:const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 144, 195, 236),
                  ),
                ),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
              ),
              style: GoogleFonts.poppins(
                textStyle:const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 144, 195, 236) ,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        CustomRow(
          btnText1: 'C',
          btnText2: 'Abs',
          btnText3: 'Mod',
          btnText4: 'pow',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: 'fact',
          btnText2: 'Sin',
          btnText3: 'sqrt',
          btnText4: '/',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '7',
          btnText2: '8',
          btnText3: '9',
          btnText4: 'X',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '4',
          btnText2: '5',
          btnText3: '6',
          btnText4: '-',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '1',
          btnText2: '2',
          btnText3: '3',
          btnText4: '+',
          rowController: _controller,
        ),
        CustomRow(
          btnText1: '0',
          btnText2: '.',
          btnText3: 'Del',
          btnText4: '=',
          rowController: _controller,
        ),
      ],
    );
  }
}
