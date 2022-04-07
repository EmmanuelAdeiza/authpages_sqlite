class User {
  final int id;
  final String first_name;
  final String last_name;
  final String email;


  const User(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.email});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["first_name"] = first_name;
    map["last_name"] = last_name;
    map["email"] = email;

    return map;
  }
}
