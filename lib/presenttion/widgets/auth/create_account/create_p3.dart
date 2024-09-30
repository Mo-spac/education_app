import 'package:education_app/constens/my_colors.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';

class CreateP3 extends StatelessWidget {
  const CreateP3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldAuth(
          title: "رقم مكوبايل الأب",
          type: "phone",
          isLast: false,
          size: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        TextFormFieldAuth(
          title: "رقم موبايل الأم",
          type: "phone",
          isLast: false,
          size: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        Text(
          "صورة البطاقة أو شهادة ميلاد الرقم القومى",
          style: TextStyle(
            fontFamily: "subtitle2",
            color: MyColors.myDeepGrey,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 12,
          decoration: BoxDecoration(
            color: MyColors.myGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 60),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "    حدد صورة ",
                  style: TextStyle(
                    fontFamily: "title",
                    fontSize: 18,
                    color: MyColors.myPurple,
                  ),
                ),
                Icon(
                  Icons.cloud_upload_rounded,
                  size: MediaQuery.of(context).size.width / 15,
                  color: MyColors.myPurple,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
