class ProfileInfo {
  ProfileInfo({
    required this.Email,
    required this.Name,
    required this.success,
  });
  late final String Email;
  late final String Name;
  late final String success;

  ProfileInfo.fromJson(Map<String, dynamic> json) {
    Email = json['Email'];
    Name = json['Name'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Email'] = Email;
    _data['Name'] = Name;
    _data['success'] = success;
    return _data;
  }
}
