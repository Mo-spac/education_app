import 'package:education_app/constens/my_colors.dart';
import 'package:education_app/constens/my_text.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/condition_container.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CreateP4 extends StatelessWidget {
  const CreateP4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "ارشادات عامة خاصة بالمنصة و من يخالف هذه الشروط سيتم غلق حسابه",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: MyColors.myDeepGrey,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        MasonryGridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 1,
          itemCount: 4,
          itemBuilder: (context, index) {
            return ConditionContainer(
              index: index,
              title: MyText.registerTexts[index][0],
              subTitle: MyText.registerTexts[index][1],
            );
          },
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "أنا أوافق على الشروط و الأحكام",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Checkbox(
              value: false,
              onChanged: (value) {},
              shape: CircleBorder(),
              activeColor: MyColors.myPurple,
            )
          ],
        )
      ],
    );
  }
}
