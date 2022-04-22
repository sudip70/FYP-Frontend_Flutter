class HospitalInfo {
  HospitalInfo({
    required this.hospitals,
    required this.msg,
    required this.succes,
  });
  late final List<Hospitals> hospitals;
  late final String msg;
  late final String succes;

  HospitalInfo.fromJson(Map<String, dynamic> json) {
    hospitals =
        List.from(json['hospitals']).map((e) => Hospitals.fromJson(e)).toList();
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hospitals'] = hospitals.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['succes'] = succes;
    return _data;
  }
}

class Hospitals {
  Hospitals({
    required this.address,
    required this.email,
    required this.hospId,
    required this.name,
    required this.phone,
    required this.website,
  });
  late final String address;
  late final String email;
  late final String hospId;
  late final String name;
  late final String phone;
  late final String website;

  Hospitals.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    email = json['email'];
    hospId = json['hosp_id'];
    name = json['name'];
    phone = json['phone'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['address'] = address;
    _data['email'] = email;
    _data['hosp_id'] = hospId;
    _data['name'] = name;
    _data['phone'] = phone;
    _data['website'] = website;
    return _data;
  }
}
