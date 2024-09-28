import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  bool passFlag = true;
  showAndHide() {
    passFlag = !passFlag;
    emit(LoginUpdate(passFlag.toString()));
  }
}
