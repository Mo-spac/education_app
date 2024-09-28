import 'package:education_app/constens/my_colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldAuth extends StatelessWidget {
  const TextFormFieldAuth({
    super.key,
    required this.title,
    required this.isPassword,
    this.prefixIcon,
  });
  final String title;
  final bool isPassword;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: "subtitle2",
                fontSize: 17,
                color: MyColors.myDeepGrey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 160,
        ),
        TextFormField(
          cursorColor: Colors.black,
          textDirection: TextDirection.rtl,
          obscureText: isPassword,
          decoration: InputDecoration(
            filled: true,
            prefixIcon: prefixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
