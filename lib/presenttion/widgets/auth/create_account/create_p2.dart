import 'package:education_app/presenttion/widgets/auth/create_account/drop_down_auth.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';

class CreateP2 extends StatelessWidget {
  const CreateP2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropDownAuth(
              title: "الصف الدراسي",
              size: MediaQuery.of(context).size.width / 2.2,
            ),
            DropDownAuth(
              title: "الشعبة",
              size: MediaQuery.of(context).size.width / 2.2,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropDownAuth(
              title: "المحافظة",
              size: MediaQuery.of(context).size.width / 2.2,
            ),
            DropDownAuth(
              title: "المدينة/المنطقة",
              size: MediaQuery.of(context).size.width / 2.2,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        TextFormFieldAuth(
          title: "اسم المدرسة",
          type: "school",
          isLast: true,
          size: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DropDownAuth(
              title: "تاريخ الميلاد",
              size: MediaQuery.of(context).size.width / 3.5,
            ),
            DropDownAuth(
              title: "",
              size: MediaQuery.of(context).size.width / 3.5,
            ),
            DropDownAuth(
              title: "",
              size: MediaQuery.of(context).size.width / 3.5,
            ),
          ],
        )
      ],
    );
  }
}
