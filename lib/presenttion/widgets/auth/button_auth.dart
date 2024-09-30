import 'package:education_app/constens/my_colors.dart';
import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  const ButtonAuth({
    super.key,
    this.onTap,
    required this.text,
  });

  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height / 15,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: MyColors.myPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "title",
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
