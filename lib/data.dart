class Profile {
  int id;
  String name;
  String userName;
  String profileImage;

  Profile(
      {required this.id,
      required this.name,
      required this.userName,
      required this.profileImage});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'],
      name: json.containsKey('name') ? json['name'] : '',
      userName: json.containsKey('userName') ? json['userName'] : '',
      profileImage: json['profileImage'],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};

    json['id'] = id;
    json['name'] = name;
    json['userName'] = userName;
    json['profieImage'] = profileImage;

    return json;
  }
}
