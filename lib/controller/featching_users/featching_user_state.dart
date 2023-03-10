part of 'featching_user_cubit.dart';

class FeatchingUserState {
  final List<Users> usersList;
  final bool isloading;

  FeatchingUserState({required this.isloading, required this.usersList});
}

class FeatchingUserInitial extends FeatchingUserState {
  FeatchingUserInitial() : super(usersList: [], isloading: true);
}
