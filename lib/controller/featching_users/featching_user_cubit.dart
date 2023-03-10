import 'package:brain_wired_apk/model/model.dart';
import 'package:brain_wired_apk/service/api.dart';
import 'package:brain_wired_apk/service/base_clint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featching_user_state.dart';

class FeatchingUserCubit extends Cubit<FeatchingUserState> {
  FeatchingUserCubit() : super(FeatchingUserInitial());
  fetch() async {
    emit(FeatchingUserState(usersList: [], isloading: true));

    List<Users> usersList = await BaseClint().getData(url: API_KeY);
    emit(FeatchingUserState(usersList: usersList, isloading: false));
  }
}
