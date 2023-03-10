// import 'package:brain_wired_apk/service/api.dart';
// import 'package:brain_wired_apk/model/model.dart';
// import 'package:http/http.dart' as http;

// Future<List<Users>> fetchUsers() async {
//   final uri = Uri.parse(API_KeY);
//   final response = await http.get(uri);
//   if (response.statusCode == 200 || response.statusCode == 201) {
//     final body = response.body;
//     final List<Users> userList = usersFromJson(body);

//     return userList;
//   } else {
//     return Future.error("something went wrong");
//   }
// }
