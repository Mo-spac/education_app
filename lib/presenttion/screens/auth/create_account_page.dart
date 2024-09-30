import 'package:education_app/constens/my_colors.dart';
import 'package:education_app/presenttion/widgets/auth/button_auth.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p1.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p2.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p3.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p4.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  List<Widget> createAccountTextFielde = [
    CreateP1(),
    CreateP2(),
    CreateP3(),
    CreateP4(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 80,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                "انشاء حسابي الخاص",
                style: TextStyle(
                  fontFamily: "title",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Text(
                          "الخطوة ${index + 1}",
                          style: TextStyle(
                            fontFamily: "title",
                            fontSize: 20,
                            color: MyColors.myPurple,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        createAccountTextFielde[index],
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            if (index != 0)
                              ButtonAuth(
                                text: "السابق",
                                haveBorder: true,
                              ),
                            ButtonAuth(
                              text: (index == 3) ? "تسجيل" : "التالى",
                              haveBorder: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
