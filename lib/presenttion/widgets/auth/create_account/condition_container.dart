import 'package:education_app/constens/my_colors.dart';
import 'package:flutter/material.dart';

class ConditionContainer extends StatelessWidget {
  const ConditionContainer({
    super.key,
    required this.index,
    required this.title,
    required this.subTitle,
  });

  final int index;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 120),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 30,
        vertical: MediaQuery.of(context).size.height / 120,
      ),
      // height: 100,
      decoration: BoxDecoration(
        color: MyColors.myGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height,
      ),
      child: Column(
        textDirection: TextDirection.rtl,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (index + 1).toString(),
            style: TextStyle(
              fontFamily: "title",
              fontSize: 22,
              color: MyColors.myPurple,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: "title",
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: MyColors.myDeepGrey,
            ),
          )
        ],
      ),
    );
  }
}
