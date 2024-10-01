import 'package:education_app/business_logic/auth/create_account/create_account_cubit/create_account_cubit.dart';
import 'package:education_app/presenttion/widgets/auth/text_form_field_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateP1 extends StatelessWidget {
  const CreateP1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountCubit, CreateAccountState>(
      builder: (context, state) {
        return Form(
          key: context.read<CreateAccountCubit>().globalKey1,
          child: Column(
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
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFormFieldAuth(
                title: "الاسم الأخير",
                type: "Last Name",
                isLast: false,
                size: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFormFieldAuth(
                title: "البريد الالكترونى",
                type: "email",
                isLast: false,
                size: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  TextFormFieldAuth(
                    onTap: () {
                      context
                          .read<CreateAccountCubit>()
                          .showAndHideCreateOrCertainPass("create");
                    },
                    flag: context.read<CreateAccountCubit>().isHideCreatePass,
                    title: "كلمة المرور",
                    type: "pass",
                    isLast: false,
                    size: MediaQuery.of(context).size.width / 2.2,
                  ),
                  TextFormFieldAuth(
                    onTap: () {
                      context
                          .read<CreateAccountCubit>()
                          .showAndHideCreateOrCertainPass("certain");
                    },
                    flag: context.read<CreateAccountCubit>().isHideCertainPass,
                    title: "تأكيد كلمة المرور",
                    type: "pass",
                    isLast: false,
                    size: MediaQuery.of(context).size.width / 2.2,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              TextFormFieldAuth(
                title: "رقم الموبايل",
                type: "phone",
                isLast: false,
                size: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        );
      },
    );
  }
}
