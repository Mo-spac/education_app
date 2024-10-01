import 'package:bloc/bloc.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p1.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p2.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p3.dart';
import 'package:education_app/presenttion/widgets/auth/create_account/create_p4.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());

  List<Widget> createAccountTextFielde = [
    CreateP1(),
    CreateP2(),
    CreateP3(),
    CreateP4(),
  ];
  PageController pageController = PageController();
  void createAccountButtonNav(String type) {
    if (type == "next") {
      pageController.nextPage(
        duration: Duration(milliseconds: 50),
        curve: Curves.ease,
      );
    } else {
      pageController.previousPage(
        duration: Duration(milliseconds: 50),
        curve: Curves.ease,
      );
    }
  }
}
