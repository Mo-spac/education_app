import 'package:education_app/constens/my_colors.dart';
import 'package:flutter/material.dart';

class DropDownAuth extends StatelessWidget {
  const DropDownAuth({
    super.key,
    required this.title,
    required this.size,
  });
  final String title;

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Column(
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
          Container(
            width: size,
            decoration: BoxDecoration(
              color: MyColors.myGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
              isExpanded: true,
              underline: Container(),
              dropdownColor: Colors.white,
              // alignment: Alignment.centerRight,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              items: [
                DropdownMenuItem(
                  child: Align(
                      alignment: Alignment.centerRight, child: Text("الصف")),
                ),
              ],
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}
