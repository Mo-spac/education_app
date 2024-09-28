import 'package:education_app/constens/my_colors.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 80,
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                ),
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                    fontFamily: "title",
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                TextFormFieldAuth(
                  title: "البريد الاكترونى",
                  isPassword: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                TextFormFieldAuth(
                  title: "كلمة السر",
                  isPassword: true,
                  prefixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: MyColors.myPurple,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 160,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "هل نسيت كلمة المرور ؟",
                    style: TextStyle(
                      fontFamily: "title",
                      color: MyColors.myPurple,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: MyColors.myPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "الدخول",
                      style: TextStyle(
                        fontFamily: "title",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 160,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "انشاء حساب جديد",
                      style: TextStyle(
                        fontFamily: "title",
                        fontSize: 18,
                        color: MyColors.myDeepGrey,
                      ),
                    ),
                    Text(
                      "  لسه مسجل؟",
                      style: TextStyle(
                        fontFamily: "subtitle2",
                        fontSize: 18,
                        color: MyColors.myDeepGrey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
