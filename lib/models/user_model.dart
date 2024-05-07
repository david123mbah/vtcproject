// {
//     "user": {

//         "email": "superadmin1@example.com",

//         "role": "sadmin",
//         "username": "VVIMS1"
//     }
// }



class User {
  final Map<String, dynamic> user;
  final String email;

  final String role;
  final String userName;
  final String? error;

  User( {
    this.error,
    required this.user,
    required this.email,
    required this.role,
    required this.userName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final user = json['user'];
    final email = user['email'];
    final role = user['role'];
    final userName = user['username'];
    // final email = Email.fromJson(emailJson);

    // final roleJson = json['role'];
    // final role = Role.fromJson(roleJson);

    // final userNameJson = json['username'];
    // final userName = UserName.fromJson(userNameJson);

    return User(user: user, email: email, role: role, userName: userName);
  }
}
