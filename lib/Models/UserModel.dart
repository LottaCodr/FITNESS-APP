class UserModel {
  final String? id;
  final String fullName;
  final String phoneNumber;
  final String email;
  //final String password;

  UserModel(
      {this.id,
      required this.fullName,
      required this.phoneNumber,
      required this.email,
      //required this.password,
      });

  toJson() {
    return {
      "FullName": fullName,
      "PhoneNumber": phoneNumber,
      "Email": email,
      //"Password": password
    };
  }
}
