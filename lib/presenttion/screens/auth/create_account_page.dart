import 'package:education_app/business_logic/auth/create_account/create_account_cubit/create_account_cubit.dart';
import 'package:education_app/constens/my_colors.dart';
import 'package:education_app/presenttion/widgets/auth/button_auth.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p1.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p2.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p3.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p4.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  late CreateAccountCubit createAccountCubit;

  @override
  void initState() {
    createAccountCubit = CreateAccountCubit();
    super.initState();
  }

  @override
  void dispose() {
    createAccountCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => createAccountCubit,
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
                  child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
                    builder: (context, state) {
                      return PageView.builder(
                        controller:
                            context.read<CreateAccountCubit>().pageController,
                        itemBuilder: (context, index) => ListView(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 40,
                            ),
                            Text(
                              textDirection: TextDirection.rtl,
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
                            context
                                .read<CreateAccountCubit>()
                                .createAccountTextFielde[index],
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                if (index != 0)
                                  ButtonAuth(
                                    onTap: () {
                                      context
                                          .read<CreateAccountCubit>()
                                          .createAccountButtonNav("previous");
                                    },
                                    text: "السابق",
                                    haveBorder: true,
                                  ),
                                ButtonAuth(
                                  onTap: () {
                                    context
                                        .read<CreateAccountCubit>()
                                        .createAccountButtonNav("next");
                                  },
                                  text: (index == 3) ? "تسجيل" : "التالى",
                                  haveBorder: false,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 20,
                            ),
                          ],
                        ),
                        itemCount: 4,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
