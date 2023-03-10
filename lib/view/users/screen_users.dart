import 'package:brain_wired_apk/controller/featching_users/featching_user_cubit.dart';
import 'package:brain_wired_apk/view/users/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class screenUsers extends StatelessWidget {
  const screenUsers({super.key});

  @override
  Widget build(BuildContext context) {
    //calling datas in intial
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FeatchingUserCubit>().fetch();
    });

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black12,
          centerTitle: true,
          title: const Text("Users"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),

          child: BlocBuilder<FeatchingUserCubit, FeatchingUserState>(
            builder: (context, state) {
              if (state.isloading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: state.usersList.length,
                  itemBuilder: (context, index) {
                    final user = state.usersList[index];

                    return CustomWidget(user: user);
                  },
                );
              }
            },
          ),
          // child: FutureBuilder(
          //   future: fetchUsers(),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasError) {
          //       return Text("something wnt wrong");
          //     } else if (snapshot.hasData) {
          //       final userList = snapshot.data;

          //       return ListView.separated(
          //         separatorBuilder: (context, index) => const SizedBox(
          //           height: 20,
          //         ),
          //         itemCount: userList!.length,
          //         itemBuilder: (context, index) {
          //           final user = userList[index];

          //           return CustomWidget(user: user);
          //         },
          //       );
          //     } else {
          //       return Center(child: CircularProgressIndicator());
          //     }
          //   },
          // ),
        ),
      ),
    );
  }
}


//qubic.//
//http.get separate fuction 
// run app nte munne flutter initialize
//remove future builder.//
//has code 300,400,500
//remove from json map
//

