import 'package:education_app/presenttion/widgets/auth/create_text_fields_page_auth.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';

class CreateP2 extends StatelessWidget {
  const CreateP2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            TextFormFieldAuth(
              title: "الاسم الأول",
              type: "First Name",
              isLast: false,
              size: MediaQuery.of(context).size.width / 2.2,
            ),
            TextFormFieldAuth(
              title: "الاسم الأوسط",
              type: "Second Name",
              isLast: false,
              size: MediaQuery.of(context).size.width / 2.2,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        TextFormFieldAuth(
          title: "الاسم الأخير",
          type: "Last Name",
          isLast: false,
          size: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        TextFormFieldAuth(
          title: "البريد الالكترونى",
          type: "email",
          isLast: false,
          size: MediaQuery.of(context).size.width,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            TextFormFieldAuth(
              title: "كلمة المرور",
              type: "pass",
              isLast: false,
              size: MediaQuery.of(context).size.width / 2.2,
            ),
            TextFormFieldAuth(
              title: "تأكيد كلمة المرور",
              type: "pass",
              isLast: false,
              size: MediaQuery.of(context).size.width / 2.2,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        TextFormFieldAuth(
          title: "رقم الموبايل",
          type: "phone",
          isLast: false,
          size: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}
