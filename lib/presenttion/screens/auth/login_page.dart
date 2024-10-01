import 'package:education_app/app_routes.dart';
import 'package:education_app/business_logic/auth/login/login_cubit/login_cubit.dart';
import 'package:education_app/constens/my_colors.dart';
import 'package:education_app/presenttion/widgets/auth/button_auth.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginCubit loginCubit;

  @override
  void initState() {
    loginCubit = LoginCubit();
    super.initState();
  }

  @override
  void dispose() {
    loginCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return Form(
              key: context.read<LoginCubit>().globalKey,
              child: Container(
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
                          size: MediaQuery.of(context).size.width,
                          title: "البريد الاكترونى",
                          type: "email",
                          isLast: false,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        TextFormFieldAuth(
                          size: MediaQuery.of(context).size.width,
                          flag: context.read<LoginCubit>().passFlag,
                          onTap: () {
                            context.read<LoginCubit>().showAndHide();
                          },
                          title: "كلمة السر",
                          type: "pass",
                          isLast: true,
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
                        ButtonAuth(
                          onTap: () {
                            context.read<LoginCubit>().goToHome();
                          },
                          text: "الدخول",
                          haveBorder: false,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 160,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.createAcountPage);
                              },
                              child: Text(
                                "انشاء حساب جديد",
                                style: TextStyle(
                                  fontFamily: "title",
                                  fontSize: 18,
                                  color: MyColors.myDeepGrey,
                                ),
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
          },
        ),
      ),
    );
  }
}
