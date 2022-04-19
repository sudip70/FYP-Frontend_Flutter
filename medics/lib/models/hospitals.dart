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
    required this.Address,
    required this.Email,
    required this.Name,
    required this.Phone,
    required this.Website,
    required this.hospId,
  });
  late final String Address;
  late final String Email;
  late final String Name;
  late final String Phone;
  late final String Website;
  late final String hospId;

  Hospitals.fromJson(Map<String, dynamic> json) {
    Address = json['Address'];
    Email = json['Email'];
    Name = json['Name'];
    Phone = json['Phone'];
    Website = json['Website'];
    hospId = json['hosp_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Address'] = Address;
    _data['Email'] = Email;
    _data['Name'] = Name;
    _data['Phone'] = Phone;
    _data['Website'] = Website;
    _data['hosp_id'] = hospId;
    return _data;
  }
}
