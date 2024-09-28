import 'package:education_app/constens/my_colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldAuth extends StatelessWidget {
  const TextFormFieldAuth({
    super.key,
    required this.title,
    // required this.type,
    required this.isPassword,
    this.prefixIcon,
    this.onTap,
    this.flag,
  });
  final String title;
  final bool isPassword;
  // final String type;
  final Icon? prefixIcon;
  final Function()? onTap;
  final bool? flag;

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
          obscureText: flag == true ? true : false,
          decoration: InputDecoration(
            filled: true,
            prefixIcon: isPassword
                ? GestureDetector(
                    onTap: onTap,
                    child: Icon(
                      flag == true
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined,
                      color: MyColors.myPurple,
                    ),
                  )
                : SizedBox(),
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
